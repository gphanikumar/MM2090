# A mapping of MacOS to Linux commands
(Tested on MacOS Mojave 10.14.6)

`/`	open a searching option in vi and some other programs  
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`	Install Homebrew  
`|`	for clubbing multiple commands in a single command-line  
`any command with at the end "&" without the quotes`	the command will run in the background  
`curl ifconfig.me`	get your EXTERNAL ip address  
`cut`	cut the output of a command column wise  
`df`	disk information  
`du`	disk usage informaiton  
`file`	determine filetype or file extensions  
`find`	find file and others  
`grep`	for searching in output of a command  
`head`	top 10 files  
`HOMEBREW_NO_AUTO_UPDATE=1`	write it before any brew install command and it'll prevent the auto updation of the brew  
`ioreg`	shows io registry  
`ipconfig`	get your INTERNAL ip address  
`kill`	kill a program  
`less`	similar to more but with improved functionality with search and other capabilites  
`ls`	list all the files in current directory  
`more`	make output of a program in page by page  
`nohup`	run the command in the background and don’t kill it when I logout  
`open -a xyz`	open application xyz  
`pkgutil`	tells about different packages installed  
`pmset`	get power informaiotn  
`pmset -g batt`	get battery information  
`ps`	process status  
`regex`	searching regular expressions  
`softwareupdate -l`	list all the available software updates  
`su -l "user_name"`	login to user "user_name"  
`sw_vers`	current Mac operating system version and build number.  
`sysctl`	similar to system_profiler bt concise  
`system_profiler`	entire information related to the system. Can be not so useful if you dotn know what you re loking for. Takes a lot of time to get the output  
`date -j -f '%d-%m-%Y' "25-03-1994" +'%A'`	  
`tail`	bottom 10 files  
`uname`	os info  
`wc`	word, line, character, byte count  
`wc`	count words and line in an output  
`wget link`	download from link  
`xterm`	windows terminal emulator for linux/mac  
`date -j -f '%d-%m-%Y' "25-03-1994" +'%A'`	get weekday of the date 25-03-1994  
`cal`	get the current month's calendar  
`cal yyyy`	get the yyyy years calendar  
`brew info package_name`	get the dependencies information for package package_name  
`find /path/to/directory/ -type f -name "*.txt"`	find all the files of type .txt (extension .txt) in given directory  
`egrep '^M'`	  
`egrep '..19'`	  
`egrep 'M$'`	  
`grep 'MM' RollList.csv`	  
`egrep '[hH][aA]' RollList.csv`	  
`egrep '[hH]..[aA]' RollList.csv`	  
`egrep '[hH]{2}' RollList.csv`	  
`egrep '[hH].*[aA]' RollList.csv`	any no. of letters between the two options  
`egrep '[hH]*[aA]' RollList.csv`	first option can repeat any no. of times  
`egrep '[jJ]a[yY]' RollList.csv `	  
`egrep '\b[jJ]a[yY]' RollList.csv `	  
`chmod 755 adsf`	change acces control of file adsf. Further info at https://www.guru99.com/file-permissions.html  
`awk '{print "PREFIX"$0}' FILE`	add the word PREFIX to every line in the FILE  
`sed 's/^/PREFIX/' FILE`	add the word PREFIX to every line in the FILE  
`sed -i.bak '2s/.*/3' *`	replace everything in 2nd line with "3" INPLACE for all the files in current directory  
`sed -n '/asdf/,$p' xyz`	searches for text asdf in the file xyz line by line and then prints from the first occurrence of the text asdf to the end of the file (denoted by $p)  
`sed -n '/dog/,/cat/p' xyz`	searches for text dog and cat in file xyz and prints everything in between those two words (including both)  
`whereis`	to find the location of that command  
  
