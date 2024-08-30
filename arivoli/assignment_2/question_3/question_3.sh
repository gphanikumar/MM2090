#!/usr/bin/bash

python3 - "$@" <<END
import math
import sys

p1 = open(sys.argv[1], "r")
lines = p1.readlines()
L = lines[1:]
D = len(L)
d = 0
tf = 0

if len(sys.argv) > 2:
    a = sys.argv[2]
    l = []

    for i in L:
        x = i.replace(",", "").replace(".", "").replace("\n", "")
        l.append(x)

    for line in l:
        t1 = line.split(" ")
        t = t1[1:]

        if a in t:
            d = d + 1
            c = 0
            c1 = 0
            for x in t:
                if x == a:
                    c = c + 1
            c1 = len(t)
            tf = tf + (c / c1)

    idf = math.log2((D + 1) / (d + 1))
    tf_idf = (tf * idf) / D
    tf_idfT = "{:.4f}".format(tf_idf)
    print("{}".format(tf_idfT))
else:
    s = set()
    v = []
    l = []
    for i in L:
        x = i.replace(",", "").replace(".", "").replace("\n", "")
        l.append(x)

    for line in l:
        t1 = line.split(" ")
        t = t1[1:]
        s.update(t)

    for i in s:
        tf = 0
        d = 0
        a = i
        l = []

        for i in L:
            x = i.replace(",", "").replace(".", "").replace("\n", "")
            l.append(x)

        for line in l:
            t1 = line.split(" ")
            t = t1[1:]

            if a in t:
                d = d + 1
                c = 0
                c1 = 0
                for x in t:
                    if x == a:
                        c = c + 1
                c1 = len(t)
                tf = tf + (c / c1)

        idf = math.log2((D + 1) / (d + 1))
        tf_idf = (tf * idf) / D
        tf_idfT = "{:.4f}".format(tf_idf)
        v.append(tf_idfT)

    s = list(s)
    listf = sorted(zip(s, v), key=lambda x: x[1], reverse=True)[:5]
    for word, value in listf:
        print("{}, {}".format(word, value))
END
