# The filesystem 

  The type of files as listed by /bin/ls   \"c\" means its a character file. \"l\" means its a link. \"d\" means its a directory. \"b\" means its a block file. \"p\" means its a pipe file. \"s\" means its a socket file.

  ln \<sourcefile\> \<linkname\>           Use command ln to create a hard link to a file. Use "ls -i" to check that both files have same inode number. Edit one file, open the other to check that its the same file. Remove one file and check if the other file is there.

  ls -lia                                  Look at the inode numbers of the files like "." and ".." in any directory and see if they match with those of current directory and parent directory.

  chmod 744 \<filename\>                   Understand the format of the three digit number used to change permissions of a file or a directory. Compare with the listing that appears when you use "ls -l" and map the user / group / other user permissions of a file to the three digit number.

## Home Work

1. Create a file with a command inside it, change its permission to executable and see if you are able to create a new command for yourself.
2.  Create an alias for a command your favorite options so that the output is what you desire. Eg., the directory listing with file size in human readable form.
3.  Use the commands "cd" and "pwd" to navigate around the file system and locate configuration files for your system eg., for graphics, network, file systems to be mounted during booting and system service programs that run automatically when the machine is booted up.
