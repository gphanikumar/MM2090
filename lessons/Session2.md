# Getting to know your OS commands, admin privileges, Shell and filesystem


## OS Details

### lsb\_release
The tool **lsb\_release** comes from the package **lsb-release**. You can find out which operating system, which version, release, description etc., is running on your system. 

     /usr/bin/lsb\_release -a 

### os-release
You can view the contents of the file /etc/os-release to also view the release notes from the OS vendor.

      /bin/cat /etc/os-release

### hostnamectl
You can view unique IDs, kernel version and architecture.

      /usr/bin/hostnamectl 

### uname
The program **uname** is from the package **coreutils**. This program outputs kernel version and related info.

      /bin/uname -a

### /proc/version
You can view the contents of the virtual file /proc/version to see the same information as above.

      /bin/cat /proc/version

### sources.list
View the file /etc/apt/sources.list to see from where the packages are being installed in your system using the **apt** command. Repositories used by the OS for updates and additional packages are listed here.

     cat /etc/apt/sources.list

## Homework

1. What are the other code names for OS releases of Ubuntu?
2. Which major flavour of Linux is Ubuntu based on? What are other major flavours out there?
3. What are the other popular and lightweight flavours of Linux?
4. What are the other architectures supported by Linux?
5. What are the kind of operating systems used by most of the supercomputers in the world?
6. Which version of Linux kernel are the popular Android operating systems based on? Check this information for your laptop and your mobile.

## Admin privileges

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



                |
+-----------------------------------+-----------------------------------+
| /usr/bin/sudo /usr/bin/apt-get    | Install a package to add a new    |
| install \<package-name\>          | functionality to the system       |

+-----------------------------------+-----------------------------------+
| /usr/bin/dpkg -S \<command\>      | Look for the name of the command  |
|                                   | in the packages installed on the  |
|                                   | machine -- often to locate it in  |
|                                   | the filesystem.                   |
|                                   |                                   |
|                                   | Package: **dpkg**                 |
+-----------------------------------+-----------------------------------+

| /usr/bin/apt-file find \<file\>   | Same as above                     |

+-----------------------------------+-----------------------------------+
| /usr/bin/apt-file list            | Similar to above                  |
| \<package\>                       |                                   |
+-----------------------------------+-----------------------------------+

## Homework

1. Install packages to add the following commands to your system and explore what they do: fortune, octave, pdftk, unison, wget, curl, gftp, xfig, vlc
2. Packages come as groups too. Explore the GUI feature for Ubuntu Software to see what those groups are -- in the topics under categories like "Productivity", "Education and Science".
3. Try and get the entire TeX document preparation software toolset installed on your machine.

## Your shell environment

  ----------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  type \<command name\>                           For any command you are using, you can find out if it is a feature of the shell or from the OS.
  help                                            Find out what features are available within the shell itself. Run help with a keywork to know more about each of these features. Eg., "help set" tells you about the shell command "set".

  /usr/bin/which                                  You should know which location the command is being run from. It is necessary that the location should be listed in your \$PATH variable.

  /usr/bin/apropos                                If you can't think of the command name but want to see a list of commands available that are related to a keyword. Read the manual page on any of these commands to know more. **Discover new commands this way.**

  /usr/bin/man                                    Manual pages for the command you want. Sometimes there are different sections for the same command, pick any to know more about the command.

  /usr/bin/info                                   A structured way to learn about the commands available in the system.

  echo \$PATH                                     The path variable lists ";" separated directories where the command will be searched for before executing. Some software are installed in non-standard locations and so we need to ensure that the location is added to the path.

  The prompts: \$PS1 and \$PS2                    Command prompts. The strings used to know which context the shell is currently in.

  \$USER                                          Name of the currently logged in user.

  \$HOME                                          Home directory of the currently logged in user. Tilda character is an alias for this.

  Environment : /etc/profile and \$HOME/.bashrc   Everytime a shell is opened, commands in these files are executed to prepare the command line environment for the user.

  source \<filename\>                             If there is a file with a list of commands, run "source" command to execute them.

  printenv                                        List all the variables defined in the current commandline environment.

  set                                             To define and set values to variables.

  alias                                           To define aliases. One can also unalias. Often the default options on dangerous commands (such as rm, mv, cp) are aliased to ask for confirmation (using -i option) so that one does not lose files.

Files used during opening of shell:

Login shells : /etc/profile, \~/.bash\_profile, \~/.bash\_login,
\~/.profile

Non-Login shells : /etc/bash.bashrc, \~/.bashrc

## Homework

1. Add a command like *echo "Hello"* at the bottom of your \$HOME/.bashrc file and open a new shell to see for yourself.
2. Discover say three new commands you did not know about and list their uses.
3. Change the command prompts to something else and see.
4. Create an alias that displays the hard discs currently mounted in the system.

## File system

  The type of files as listed by /bin/ls   \"c\" means its a character file. \"l\" means its a link. \"d\" means its a directory. \"b\" means its a block file. \"p\" means its a pipe file. \"s\" means its a socket file.

  ln \<sourcefile\> \<linkname\>           Use command ln to create a hard link to a file. Use "ls -i" to check that both files have same inode number. Edit one file, open the other to check that its the same file. Remove one file and check if the other file is there.

  ls -lia                                  Look at the inode numbers of the files like "." and ".." in any directory and see if they match with those of current directory and parent directory.

  chmod 744 \<filename\>                   Understand the format of the three digit number used to change permissions of a file or a directory. Compare with the listing that appears when you use "ls -l" and map the user / group / other user permissions of a file to the three digit number.

## Home Work

1. Create a file with a command inside it, change its permission to executable and see if you are able to create a new command for yourself.
2.  Create an alias for a command your favorite options so that the output is what you desire. Eg., the directory listing with file size in human readable form.
3.  Use the commands "cd" and "pwd" to navigate around the file system and locate configuration files for your system eg., for graphics, network, file systems to be mounted during booting and system service programs that run automatically when the machine is booted up.
