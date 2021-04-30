# Using your admin privileges to manage packages

Often the user is expected to install packages to get a certain software
up and running in the machine. Following commands help you get around
this task.

### whoami
The program **whoami** is from the package **coreutils**. This program outputs the username of the user logged in.
      /usr/bin/whoami

### groups
The program **groups** is from the package **coreutils**. This program outputs which groups the user belongs to.
       /usr/bin/groups

### /etc/sudoers
To check if you are one of the superusers in your system and to know who else has admin privileges, view the contents of the file /etc/sudoers. Even to view this file you need admin privileges.

      /usr/bin/sudo /bin/cat /etc/sudoers 

### apt-get update 
Find out latest updates of the OS from the repository. This program fetches the updates from the list of sources as in **/etc/apt/sources.list**.

     /usr/bin/sudo /usr/bin/apt-get update 

### apt-get upgrade
Install the updates to bring the OS of the machine to the latest available.

      /usr/bin/sudo /usr/bin/apt-get upgrade 

### apt-get autoremove
Remove packages that are not needed by any installed software, to save disc space.  

     /usr/bin/sudo /usr/bin/apt-get autoremove

### apt-get install
Install a package to add a new functionality to the system.

    /usr/bin/sudo /usr/bin/apt-get install \<package-name\> 

### dpkg
Look for the name of the command in the packages installed on the machine -- often to locate it in the filesystem.                   |

     /usr/bin/dpkg -S \<command\> 

### apt-file find
Look for the name of the command in the packages installed on the machine -- often to locate it in the filesystem.                   |

       /usr/bin/apt-file find \<file\>  

### apt-file list
List all the files that are provided by a package. Similar to above.

       /usr/bin/apt-file list \<package\> 

## Homework

1. Install packages to add the following commands to your system and explore what they do: fortune, octave, pdftk, unison, wget, curl, gftp, xfig, vlc
2. Packages come as groups too. Explore the GUI feature for Ubuntu Software to see what those groups are -- in the topics under categories like "Productivity", "Education and Science".
3. Try and get the entire TeX document preparation software toolset installed on your machine.

