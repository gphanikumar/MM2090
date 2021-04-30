# OS details


### lsb\_release
The tool **lsb_release** comes from the package **lsb-release**. You can find out which operating system, which version, release, description etc., is running on your system. 

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

