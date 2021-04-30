# Getting to know your machine and account

Packages needed for this session:

*hwinfo, lshw, fdisk, memtester, hardinfo, util-linux, clinfo,
net-tools, coreutils, procps, pciutils, dmidecode, lsb-release, hdparm *

Use "sudo apt-get install \<package\>" to install the above packages.

To search for which package a particular executable came from:

/usr/bin/sudo apt-get install apt-file

/usr/bin/sudo apt-file update

/usr/bin/apt-file search \<executable\>

## Hardware of the machine

This module is to let you know about the following peices of hardware
you have in your machine: CPU, Memory, Hard Disks, Graphics Card,
Monitor Network Cards

| /usr/sbin/hwinfo | Redirect the output to a file and read it. This is a long and comprehensive listing of hardware. Package: **hwinfo** |

+-----------------------------------+-----------------------------------+
| /usr/bin/lshw                     | Redirect the output to a file and |
|                                   | read it. This is a brief listing  |
|                                   | of hardware.                      |
|                                   |                                   |
|                                   | Package: **lshw**                 |
+-----------------------------------+-----------------------------------+
| /bin/cat /proc/cpuinfo            | Explore what cpu you have, how    |
|                                   | many cores, speed, cache memory   |
|                                   | etc.,                             |
+-----------------------------------+-----------------------------------+
| /usr/bin/sudo /sbin/fdisk -l      | Use with care. One can use fdisk  |
|                                   | to edit partitions, format etc.,  |
|                                   | so be careful with this command.  |
|                                   |                                   |
|                                   | Package: **fdisk**                |
+-----------------------------------+-----------------------------------+
| /bin/cat /proc/partitions         | List the partitions mounted. Use  |
|                                   | the command **mount **or** df**   |
|                                   | to see similar information.       |
+-----------------------------------+-----------------------------------+
| /bin/lsblk -o NAME,SIZE           | Figure out the device and the     |
|                                   | partitions being used for storage |
|                                   | in your machine.                  |
+-----------------------------------+-----------------------------------+
| /usr/bin/lspci                    | Explore what hardware components  |
|                                   | are associated with the PCI bus.  |
|                                   |                                   |
|                                   | Package: **pciutils**             |
+-----------------------------------+-----------------------------------+
| /bin/grep "CardName"              | Use the output of lspci to know   |
| /var/log/Xorg.0.log               | the name of the graphics card you |
|                                   | have. Use that name to search for |
|                                   | details in the log file.          |
+-----------------------------------+-----------------------------------+
| /usr/bin/top                      | Press q to quit. Watch the        |
|                                   | listing of processes while you    |
|                                   | open other applications and close |
|                                   | them. Explore the meaning of      |
|                                   | numbers shown in the header of    |
|                                   | the screen.                       |
|                                   |                                   |
|                                   | Package: **procps**               |
+-----------------------------------+-----------------------------------+
| /bin/df -h                        | Explore other options of df to    |
|                                   | display the details on            |
|                                   | filesystems mounted.              |
|                                   |                                   |
|                                   | Package: **coreutils**            |
+-----------------------------------+-----------------------------------+
| /usr/bin/lshw -c display          | Explore other sections under      |
|                                   | which lshw gives the output.      |
|                                   |                                   |
|                                   | Package: **lshw**                 |
+-----------------------------------+-----------------------------------+
| /bin/dmesg                        | Redirect the output to a file and |
|                                   | read it.                          |
|                                   |                                   |
|                                   | Package: **util-linux**           |
+-----------------------------------+-----------------------------------+

Further exploration

+-----------------------------------+-----------------------------------+
| /usr/bin/free                     | Use with option -h for human      |
|                                   | readable format of free and used  |
|                                   | memory.                           |
|                                   |                                   |
|                                   | Package: **procps**               |
+-----------------------------------+-----------------------------------+
| /usr/bin/sudo /usr/sbin/dmidecode | Explore what type of memory you   |
| \--type memory                    | have, of what speed etc., Explore |
|                                   | what other types of hardware this |
|                                   | command can give you details      |
|                                   | about. Redirect the output to a   |
|                                   | file and read it.                 |
|                                   |                                   |
|                                   | Package: **dmidecode**            |
+-----------------------------------+-----------------------------------+
| /usr/sbin/memtester 24M 2         | Install this from the package     |
|                                   | "memtester". Check for any errors |
|                                   | in your memory. In the command    |
|                                   | given, 24MB of data and 2         |
|                                   | iterations are being used to make |
|                                   | this test.                        |
|                                   |                                   |
|                                   | Package: **memtester**            |
+-----------------------------------+-----------------------------------+
| /usr/bin/hardinfo                 | Install package "hardinfo" to get |
|                                   | this tool which has a graphical   |
|                                   | user interface and can export a   |
|                                   | report of your hardware.          |
|                                   |                                   |
|                                   | Package: **hardinfo**             |
+-----------------------------------+-----------------------------------+
| /usr/bin/upower                   | Run with -e option to see which   |
|                                   | option to be used for \<battery\> |
|                                   | (the one containing the string    |
|                                   | BAT). Run "upower -i \<battery\>" |
|                                   | to see the status of your         |
|                                   | battery.                          |
|                                   |                                   |
|                                   | Package: **upower**               |
+-----------------------------------+-----------------------------------+
| /usr/bin/lscpu                    | List CPU information of the       |
|                                   | machine.                          |
|                                   |                                   |
|                                   | Package: **util-linux**           |
+-----------------------------------+-----------------------------------+
| /usr/bin/sudo /usr/bin/clinfo     | See the capabilities of CPU and   |
|                                   | GPU to run OpenCL codes.          |
|                                   |                                   |
|                                   | Package: **clinfo**               |
+-----------------------------------+-----------------------------------+
| /sbin/hdparm -Tt /dev/sda         | get/set IDE SATA parameters       |
|                                   |                                   |
| /sbin/hdparm -v /dev/sda          | Package: **hdparm**               |
+-----------------------------------+-----------------------------------+
| /usr/bin/iostat -dx /dev/sda      | Report CPU and I/O statistics.    |
|                                   |                                   |
|                                   | Package: **sysstat**              |
+-----------------------------------+-----------------------------------+

Configurations:

+----------------+-------------------------------------+
| /sbin/ifconfig | Configuration of network interface. |
|                |                                     |
|                | Package: **net-tools**              |
+----------------+-------------------------------------+

Home work:

\[1\] Make a listing of the hard ware components you have in your
laptop.

\[2\] Look up internet and identify other variants or models of each of
the hardware components. Critically compare the specs with the ones you
have in your machine in a tabular fashion.

\[3\] List the CPU and GPU capabilities of your machine in GigaFlops as
per theoretical or vendor provided specs. You don't have to do any
benchmarking yourself for this information.

\[4\] Count the number of packages installed on your OS.

\[5\] Find out the difference in the IP configuration of your machine
when you connect your laptop using wired LAN in the hostel room and over
WiFi using IITMWiFi.
