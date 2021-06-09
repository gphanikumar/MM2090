# A mapping of MacOS to Linux commands
(Tested on MacOS Mojave 10.14.6)  
Homebrew is a robust package manager to install and manage Linux packages in MacOS.  
This is a work in progress. We'll keep on adding the commands, as and when we find them.

|Task	|MacOS	|Ubuntu/Linux|
|---|---|---|
|Open a searching option in vi and some other programs	|`/`|	same|
|Install Homebrew	|`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`|	same|
|For clubbing multiple commands in a single command-line	|`&`|	same|
|The command will run in the background	|`any command with at the end "&" without the quotes`|	same|
|Get your EXTERNAL ip address	|`curl ifconfig.me`|	dig @resolver4.opendns.com myip.opendns.com +short'|
|Cut the output of a command column wise	|`cut`|	same|
|Disk information	|`df`|	lsblk'|
|Disk usage informaiton	|`du`|	explore the command 'lsblk'|
|Determine filetype or file extensions	|`file`|	same|
|Find file and others	|`find`|	same|
|For searching in output of a command	|`grep`|	same|
|Top 10 files	|`head`|	same|
|Write it before any brew install command and it'll prevent the auto updation of the brew	|`HOMEBREW_NO_AUTO_UPDATE=1`|	not applicable for linux|
|Shows io registry	|`ioreg`|	iostat'|
|Get your INTERNAL ip address	|`ipconfig`|	hostname -I'|
|Kill a program	|`kill`|	same|
|Similar to more but with improved functionality with search and other capabilites	|`less`|	same|
|List all the files in current directory	|`ls`|	same|
|Make output of a program in page by page	|`more`|	same|
|Run the command in the background and don’t kill it when I logout	|`nohup`|	same|
|Open application xyz	|`open -a xyz`|	same|
|Tells about different packages installed	|`pkgutil`|	pacman –Qi bash'|
|Get power informaiotn	|`pmset`|	lshw'|
|Get battery information	|`pmset -g batt`|	inxi'|
|Process status	|`ps`|	same|
|Searching regular expressions	|`regex`|	same|
|List all the available software updates	|`softwareupdate -l`|	sudo apt list --upgradable'|
|Login to user "user_name"	|`su -l "user_name"`|	"su -- username
'|"
|Current Mac operating system version and build number.	|`sw_vers`|	lsb_release -a'|
|Similar to system_profiler bt concise	|`sysctl`|	uname'|
|Entire information related to the system. Can be not so useful if you dotn know what you re loking for. Takes a lot of time to get the output	|`system_profiler`|	check 'lshw' and 'lscpu'|
|	|`date -j -f '%d-%m-%Y' "25-03-1994" +'%A'`|	same|
|Bottom 10 files	|`tail`|	same|
|Os info	|`uname`|	same|
|Word, line, character, byte count	|`wc`|	same|
|Count words and line in an output	|`wc`|	same|
|Download from link	|`wget link`|	same|
|Windows terminal emulator for linux/mac	|`xterm`|	same|
|Get weekday of the date 25-03-1994	|`date -j -f '%d-%m-%Y' "25-03-1994" +'%A'`|	same|
|Get the current month's calendar	|`cal`|	same|
|Get the yyyy years calendar	|`cal yyyy`|	same|
|Get the dependencies information for package package_name	|`brew info package_name`|	apt-cache depends package_name'|
|Find all the files of type .txt (extension .txt) in given directory	|`find /path/to/directory/ -type f -name "*.txt"`|	same|
|	|`egrep '^M'`|	same|
|	|`egrep '..19'`|	same|
|	|`egrep 'M$'`|	same|
|	|`grep 'MM' RollList.csv`|	same|
|	|`egrep '[hH][aA]' RollList.csv`|	same|
|	|`egrep '[hH]..[aA]' RollList.csv`|	same|
|	|`egrep '[hH]{2}' RollList.csv`|	same|
|Any no. of letters between the two options	|`egrep '[hH].*[aA]' RollList.csv`|	same|
|First option can repeat any no. of times	|`egrep '[hH]*[aA]' RollList.csv`|	same|
|	|`egrep '[jJ]a[yY]' RollList.csv `|	same|
|	|`egrep '\b[jJ]a[yY]' RollList.csv `|	same|
|Change acces control of file adsf. Further info at https://www.guru99.com/file-permissions.html	|`chmod 755 adsf`|	same|
|Add the word PREFIX to every line in the FILE	|`awk '{print "PREFIX"$0}' FILE`|	same|
|Add the word PREFIX to every line in the FILE	|`sed 's/^/PREFIX/' FILE`|	same|
|Replace everything in 2nd line with "3" INPLACE for all the files in current directory	|`sed -i.bak '2s/.*/3' *`|	same|
|Searches for text asdf in the file xyz line by line and then prints from the first occurrence of the text asdf to the end of the file (denoted by $p)	|`sed -n '/asdf/,$p' xyz`|	same|
|Searches for text dog and cat in file xyz and prints everything in between those two words (including both)	|`sed -n '/dog/,/cat/p' xyz`|	same|
|To find the location of that command	|`whereis`|	same|

# Alternative Terminal for MacOS  
iTerm is a powerful alternative to the default Terminal of MacOS. It has live command history and many other funcatoinalities.
You can download iTerm from [here](https://iterm2.com/downloads.html)
