from random import randint
from random import sample
x=''
t = randint(2,8)
for i in range(t):
    x+=chr(randint(65,90))
for i in range(6-t):
    x+=chr(randint(97,122))
x+=str(randint(0,9))
x+=str(chr(randint(33,47)))
x+=str(chr(randint(33,47)))
x = ''.join(sample(x,len(x)))
print(x)
