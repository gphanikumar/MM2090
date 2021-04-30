# Shell environment


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

