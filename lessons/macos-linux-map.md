# A mapping of MacOS to Linux commands
(Tested on MacOS Mojave 10.14.6)

|open a searching option in vi and some other programs	|`/`|
|Install Homebrew	|`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`|
|for clubbing multiple commands in a single command-line	|`|`|
|the command will run in the background	|`any command with at the end "&" without the quotes`|
|get your EXTERNAL ip address	|`curl ifconfig.me`|
|cut the output of a command column wise	|`cut`|
|disk information	|`df`|
|disk usage informaiton	|`du`|
|determine filetype or file extensions	|`file`|
|find file and others	|`find`|
|for searching in output of a command	|`grep`|
|top 10 files	|`head`|
|write it before any brew install command and it'll prevent the auto updation of the brew	|`HOMEBREW_NO_AUTO_UPDATE=1`|
|shows io registry	|`ioreg`|
|get your INTERNAL ip address	|`ipconfig`|
|kill a program	|`kill`|
|similar to more but with improved functionality with search and other capabilites	|`less`|
|list all the files in current directory	|`ls`|
|make output of a program in page by page	|`more`|
|run the command in the background and don’t kill it when I logout	|`nohup`|
|open application xyz	|`open -a xyz`|
|tells about different packages installed	|`pkgutil`|
|get power informaiotn	|`pmset`|
|get battery information	|`pmset -g batt`|
|process status	|`ps`|
|searching regular expressions	|`regex`|
|list all the available software updates	|`softwareupdate -l`|
|login to user "user_name"	|`su -l "user_name"`|
|current Mac operating system version and build number.	|`sw_vers`|
|similar to system_profiler bt concise	|`sysctl`|
|entire information related to the system. Can be not so useful if you dotn know what you re loking for. Takes a lot of time to get the output	|`system_profiler`|
|	|`date -j -f '%d-%m-%Y' "25-03-1994" +'%A'`|
|bottom 10 files	|`tail`|
|os info	|`uname`|
|word, line, character, byte count	|`wc`|
|count words and line in an output	|`wc`|
|download from link	|`wget link`|
|windows terminal emulator for linux/mac	|`xterm`|
|get weekday of the date 25-03-1994	|`date -j -f '%d-%m-%Y' "25-03-1994" +'%A'`|
|get the current month's calendar	|`cal`|
|get the yyyy years calendar	|`cal yyyy`|
|get the dependencies information for package package_name	|`brew info package_name`|
|find all the files of type .txt (extension .txt) in given directory	|`find /path/to/directory/ -type f -name "*.txt"`|
|	|`egrep '^M'`|
|	|`egrep '..19'`|
|	|`egrep 'M$'`|
|	|`grep 'MM' RollList.csv`|
|	|`egrep '[hH][aA]' RollList.csv`|
|	|`egrep '[hH]..[aA]' RollList.csv`|
|	|`egrep '[hH]{2}' RollList.csv`|
|any no. of letters between the two options	|`egrep '[hH].*[aA]' RollList.csv`|
|first option can repeat any no. of times	|`egrep '[hH]*[aA]' RollList.csv`|
|	|`egrep '[jJ]a[yY]' RollList.csv `|
|	|`egrep '\b[jJ]a[yY]' RollList.csv `|
|change acces control of file adsf. Further info at https://www.guru99.com/file-permissions.html	|`chmod 755 adsf`|
|add the word PREFIX to every line in the FILE	|`awk '{print "PREFIX"$0}' FILE`|
|add the word PREFIX to every line in the FILE	|`sed 's/^/PREFIX/' FILE`|
|replace everything in 2nd line with "3" INPLACE for all the files in current directory	|`sed -i.bak '2s/.*/3' *`|
|searches for text asdf in the file xyz line by line and then prints from the first occurrence of the text asdf to the end of the file (denoted by $p)	|`sed -n '/asdf/,$p' xyz`|
|searches for text dog and cat in file xyz and prints everything in between those two words (including both)	|`sed -n '/dog/,/cat/p' xyz`|
|to find the location of that command	|`whereis`|  
