After running hunt.sh.x
In assignment1/question1 
```
ee23b008@ID2090:~/assignment_1/question_1$ cat README.md 
# Welcome to Treasure Hunt.
## First Challenge:
## There is a Giratina inside.
### If you dont know what Giratina is, it is a Legendary Ghost Pokemon.
### Similarily, you will see a ghost file inside, which you can't see in your naked eyes.
### But if you could access it, it would serve you forever.
``` 

Find this ghost file and open it
```
ee23b008@ID2090:~/assignment_1/question_1$ find -name '.*'
.
./0d/.gh6st

ee23b008@ID2090:~/assignment_1/question_1/0d$ cat .gh6st 
You successfully caught Giratina with the Pokeball. Here I am to serve you.
 Go to the directory number 0 and file number 5.
Remember: The next instruction is prepended with many ampersands in the file.

ee23b008@ID2090:~/assignment_1/question_1/0d/0d$ strings 5 | grep '&&&&'
&&&&dIIR#8	fiL#2	Mult1P ly	c0m preSsed	f1Le	@ he@d:Tr Y_Ur_LuCk_&_Dec 0mpreSS_iT	k
```

Now you'll find a file thats been compressed around 10 times. 
Use file command to figure out which, rename the file to the correspodining suffix 
(5.txt shld be renamed to 5.gz so that you can used gzip decompress)

final output:
```
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

You have successfully completed the Treasure Hunt. Here is your reward.

---- BEGIN PRIVATE KEY ----
a9d4ef45656fceee7571acc6037a4841526f81e6f0dbff1c093cd21c33e3a9f8d6c72cbf93a33c23c0504fb639ca96474286f3bb3158b9112fa667ac8c717b46
---- END PRIVATE KEY ----
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
```
   
