# Network Ports

Read up about TCP / UDP ports from Wikipedia at the following URL:

[https://en.wikipedia.org/wiki/List\_of\_TCP\_and\_UDP\_port\_numbers](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)

To know if a system is up and reachable, we can use the command "ping"
which uses the Internet Control Message Protocol (ICMP) for
communication. It is possible that some networks or machines disable
ICMP. This means that if a machine replies to ping, it is up but if
there is no reply, it does not mean the machine is down.

The system reserved ports that are for popular services are as follows:

  ------ --------- --------------------------------------------------

| Port | Service | Remarks |
| ---- | ------- | ------- |
| 21  |  ftp     | To transfer files in an unencrypted manner.|
| 22  |  sctp    | Secure shell connection for ssh login, scp, sftp|
| 23  |  telnet  | Terminal connection in an unencrypted manner|
| 25  |  smtp    | Email communication in an unencrypted manner|
| 80  |  http    | To view web pages in an unencrypted manner|
| 443 |  https   | Secure protocol to view web pages|
| 465 |  smtps   | Secure email communication|
| 587 |  msa     | Secure email communication after authentication|
| 631 |  cupsd   | Printer protocol in Linux|

If a software that needs communication does not work here are few steps
that should be checked:

-   The server is reachable over network. Check using ping or ssh or any
    other service that is known to be available on the server.
-   Check if the port is open using telnet \<ip address\> \<port
    number\>. You can quit this command using control+\] and typing
    quit.
-   If the port is not reachable, check on the server if the port is
    open locally.
-   Check if the port is blocked by an anti-virus software in your
    client machine.
-   There are possibilities that communication over that port is blocked
    in the network by the switches. Check that out by taking the client
    machine to different parts of the physical network and trying.

Licensed software check for license over the network using some port
number that their vendor decides. This may change from version to
version as well. If you are not able to run a licensed software, check
if the issue is about port or about the number of licenses or an entry
in the allowed hosts on the license server.

Tools such as "*nmap*" and websites such as "*mxtoolbox.com*" help in
debugging some of these issues. There is a dedicated linux flavour "kali
linux at *http://www.kali.org*" that is used by network security experts
for audit and monitoring of machines.

