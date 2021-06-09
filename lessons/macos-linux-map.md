# A mapping of MacOS to Linux commands
(Tested on MacOS Mojave 10.14.6)  
This is a work in progress. We'll keep on adding the commands, as and when we find them.

|Task	|MacOS	|Ubuntu/Linux|
|---|---|---|
|open a searching option in vi and some other programs	|`/`|	same|
|Install Homebrew	|`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`|	same|
|for clubbing multiple commands in a single command-line	|`|`|	same|
|the command will run in the background	|`any command with at the end "&" without the quotes`|	same|
|get your EXTERNAL ip address	|`curl ifconfig.me`|	dig @resolver4.opendns.com myip.opendns.com +short'|
|cut the output of a command column wise	|`cut`|	same|
|disk information	|`df`|	lsblk'|
|disk usage informaiton	|`du`|	explore the command 'lsblk'|
|determine filetype or file extensions	|`file`|	same|
|find file and others	|`find`|	same|
|for searching in output of a command	|`grep`|	same|
|top 10 files	|`head`|	same|
|write it before any brew install command and it'll prevent the auto updation of the brew	|`HOMEBREW_NO_AUTO_UPDATE=1`|	not applicable for linux|
|shows io registry	|`ioreg`|	iostat'|
|get your INTERNAL ip address	|`ipconfig`|	hostname -I'|
|kill a program	|`kill`|	same|
|similar to more but with improved functionality with search and other capabilites	|`less`|	same|
|list all the files in current directory	|`ls`|	same|
|make output of a program in page by page	|`more`|	same|
|run the command in the background and don’t kill it when I logout	|`nohup`|	same|
|open application xyz	|`open -a xyz`|	same|
|tells about different packages installed	|`pkgutil`|	pacman –Qi bash'|
|get power informaiotn	|`pmset`|	lshw'|
|get battery information	|`pmset -g batt`|	inxi'|
|process status	|`ps`|	same|
|searching regular expressions	|`regex`|	same|
|list all the available software updates	|`softwareupdate -l`|	sudo apt list --upgradable'|
|login to user "user_name"	|`su -l "user_name"`|	"su -- username
'|"
|current Mac operating system version and build number.	|`sw_vers`|	lsb_release -a'|
|similar to system_profiler bt concise	|`sysctl`|	uname'|
|entire information related to the system. Can be not so useful if you dotn know what you re loking for. Takes a lot of time to get the output	|`system_profiler`|	check 'lshw' and 'lscpu'|
|	|`date -j -f '%d-%m-%Y' "25-03-1994" +'%A'`|	same|
|bottom 10 files	|`tail`|	same|
|os info	|`uname`|	same|
|word, line, character, byte count	|`wc`|	same|
|count words and line in an output	|`wc`|	same|
|download from link	|`wget link`|	same|
|windows terminal emulator for linux/mac	|`xterm`|	same|
|get weekday of the date 25-03-1994	|`date -j -f '%d-%m-%Y' "25-03-1994" +'%A'`|	same|
|get the current month's calendar	|`cal`|	same|
|get the yyyy years calendar	|`cal yyyy`|	same|
|get the dependencies information for package package_name	|`brew info package_name`|	apt-cache depends package_name'|
|find all the files of type .txt (extension .txt) in given directory	|`find /path/to/directory/ -type f -name "*.txt"`|	same|
|	|`egrep '^M'`|	same|
|	|`egrep '..19'`|	same|
|	|`egrep 'M$'`|	same|
|	|`grep 'MM' RollList.csv`|	same|
|	|`egrep '[hH][aA]' RollList.csv`|	same|
|	|`egrep '[hH]..[aA]' RollList.csv`|	same|
|	|`egrep '[hH]{2}' RollList.csv`|	same|
|any no. of letters between the two options	|`egrep '[hH].*[aA]' RollList.csv`|	same|
|first option can repeat any no. of times	|`egrep '[hH]*[aA]' RollList.csv`|	same|
|	|`egrep '[jJ]a[yY]' RollList.csv `|	same|
|	|`egrep '\b[jJ]a[yY]' RollList.csv `|	same|
|change acces control of file adsf. Further info at https://www.guru99.com/file-permissions.html	|`chmod 755 adsf`|	same|
|add the word PREFIX to every line in the FILE	|`awk '{print "PREFIX"$0}' FILE`|	same|
|add the word PREFIX to every line in the FILE	|`sed 's/^/PREFIX/' FILE`|	same|
|replace everything in 2nd line with "3" INPLACE for all the files in current directory	|`sed -i.bak '2s/.*/3' *`|	same|
|searches for text asdf in the file xyz line by line and then prints from the first occurrence of the text asdf to the end of the file (denoted by $p)	|`sed -n '/asdf/,$p' xyz`|	same|
|searches for text dog and cat in file xyz and prints everything in between those two words (including both)	|`sed -n '/dog/,/cat/p' xyz`|	same|
|to find the location of that command	|`whereis`|	same|
