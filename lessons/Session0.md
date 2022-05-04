# Getting access to linux environment

The latest LTS version of Ubuntu as of May 2022 is [Ubuntu 22.04 LTS (Jammy Jellyfish)](http://releases.ubuntu.com/22.04/). Most of the commands listed in this course were tried with [Ubuntu 20.04 LTS (focal)](https://ubuntu.com/download/desktop) which will good enough for some more time.

You need to have regular access to a computer with a linux operating system installed on it. Here are different possibilities.

## Using your own machine
1. If you have a laptop with Ubuntu or anyother flavor of Linux on it, you are ready to go.
2. If you have a Macbook, you don't have to make any change. Most of the linux commands have their equivalents in MacOS too. Obtain a mapping of the commands with help of internet and the teaching assistants and keep that handy. Make yourself comfortable with the terminal application in MacOS.
3.  If you have a laptop of your own, seek help from the teaching assistants or volunteers for the course to get Ubuntu installed in dual boot configuration. Take back up of files before modifying partitions -- just in case.
4.  If your laptop has adequate RAM and CPU performance, you can install a hypervisor such as [Oracle VirtualBox](https://www.virtualbox.org/) or preferably [VMWare workstation](https://www.vmware.com/in/products/workstation-player.html) and install Ubuntu on it as a virtual machine.
5.  If installation of dual boot is not possible, and your machine is Windows 10, you can get the [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (Windows Subsystem for Linux) enabled. Most of the work should be possible within this shell that is basically Ubuntu Linux in console mode. As you might know, Ubuntu Shell is now an officially supported feature on Windows 10. The latest version of [WSL2](https://docs.microsoft.com/en-us/windows/wsl/tutorials/gui-apps) supports even GUI applications. Also, have a look at the [WSLg repo](https://github.com/microsoft/wslg) for more info.
6.  If you have a laptop but are unable to get a Linux/Unix like environment on it working, at least get OpenSSH or PuTTY installed on it. Obtain a login to any of the Linux machines in the lab with help from the teaching assistants. Login using [OpenSSH](https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse) / [PuTTY](https://www.putty.org/) to that machine and try your commands.
7. You can also consider buying a [raspberry pi 4](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/) and have [ubuntu](https://ubuntu.com/raspberry-pi) installed on it. Ubuntu support for ARM is pretty good. 
8.  If you do not possess a laptop and are also unable to borrow it from a friend for this course, please consider taking one for hire.

## Help on setting up dual boot

Thanks to Viabhav Mahapatra, here are two useful links to help with setting up dual boot.
 * [On itzgeek.com by Raj](https://www.itzgeek.com/post/how-to-install-ubuntu-20-04-alongside-with-windows-10-in-dual-boot/)
 * [On towardsdatascience.com by Krupesh Raikar](https://towardsdatascience.com/how-to-dual-boot-windows-10-and-linux-ubuntu-20-04-lts-in-a-few-hassle-free-steps-f0e465c3aafd)

## Using the cloud environment 
1. You can register yourself at [webminal](https://www.webminal.org/) and use the terminal on the web browser for free. They have some lessons for you to get familiarized with the command line environment set up along side the terminal.
2. You can sign-in to [cocalc](https://cocalc.com/) and open a terminal session to try it out on the web browser. Check out the free period for evaluation.
3. You can sign-in to [replit](https://replit.com/) and open a bash session to try it out on the web browser. Except for sagemath, it has tons of languages supported like cocalc.

Hands on experience is a must to learn the course contents. Please invest your time and efforts to get the practical experience. It will make a big difference to the way you approach a technical problem for the rest of your career.
