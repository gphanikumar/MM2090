# Shell environment

### type
For any command you are using, you can find out if it is a feature of the shell or from the OS.

      type <command name>

### help
Find out what features are available within the shell itself. Run help with a keywork to know more about each of these features. Eg., "help set" tells you about the shell command "set".

      help 

### which
You should know which location the command is being run from. It is necessary that the location should be listed in your \$PATH variable.

      /usr/bin/which <command name>

### apropos
If you can't think of the command name but want to see a list of commands available that are related to a keyword, you can use apropos. Read the manual page on any of these commands to know more. You can discover new commands this way.

       /usr/bin/apropos <keyword>

### man
Manual pages for the command you want. Sometimes there are different sections for the same command, pick any to know more about the command.

      /usr/bin/man <command name>

### info
A structured way to learn about the commands available in the system.

      /usr/bin/info 

### PATH variable
The path variable lists ";" separated directories where the command will be searched for before executing. Some software are installed in non-standard locations and so we need to ensure that the location is added to the path.

      echo $PATH 

### Command prompts
The default string used for prompting for user input in the shell is given in the shell variable PS1. While typing a command, if you do not close a quote and press enter, the continuation prompt will be presented. This second prompt string is given in the shell variable PS2. See how these are stored using the echo fearure.

      echo $PS1
      echo $PS2


### USER variable
Name of the currently logged in user is stored in the shell variable USER.
      echo $USER

### HOME variable
Home directory of the currently logged in user. Tilda character is an alias for this.

### Shell environment
  Environment : /etc/profile and \$HOME/.bashrc   Everytime a shell is opened, commands in these files are executed to prepare the command line environment for the user.

### source
The source command reads all the commands from the filename provided and executes them. If there is a file with a list of commands, run "source" command to execute them.

      source <filename> 

### printenv
The command printenv lists all the variables defined in the current commandline environment.

      printenv 

### set 
You can use the set command to create a shell variable with a value. These variables are available only in the current shell and not in the shells spawned further or in another shell that is run separately.

     set VARIABLE="value"
  

### alias
To define aliases so that you can use a nickname for a command with the options you regularly use. One can also use unalias on the nickname to remove the alias. Often the default options on dangerous commands (such as rm, mv, cp) are aliased to ask for confirmation (using -i option) so that one does not lose files.

     alias NICKNAME="command"
     alias rm="rm -i"
     alias mv="mv -i"
     alias cp="cp -i"

Files used during opening of shell:

Login shells : /etc/profile, \~/.bash\_profile, \~/.bash\_login,
\~/.profile

Non-Login shells : /etc/bash.bashrc, \~/.bashrc

## Homework

1. Add a command like *echo "Hello"* at the bottom of your \$HOME/.bashrc file and open a new shell to see for yourself.
2. Discover say three new commands you did not know about and list their uses.
3. Change the command prompts to something else and see.
4. Create an alias that displays the hard discs currently mounted in the system.

