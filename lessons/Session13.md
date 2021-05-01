Session -- 13 : The need for data structures

06-09-2019, 08:00 -- 09:00 Hrs, RJN 302

The built in data types of C language are limited in the capability to
hold the information we need while implementing different algorithms.
Often there is a lot of book keeping. An appropriate data structure
could make the implementation of an algorithm elegant.

It is possible to achieve the functionality of a good datastructure
using feature of C language such as "struct"and "derived data types".
However, an object oriented language such as C++ offer more elegant
implementation of data structures along with functions that work on
objects and operator overloading that make the code closer to human
readable forms. We shall use built in data structures in Python to
discuss further on this.

Look at the code "qtree" given on the moodle page of this course for
examples on implementing data structures.

Students are asked to install python and jupyter-notebook interface to
be ready for the next few classes. While launching the
*jupyter-notebook*, if there is any error about opening socket etc.,
then launch the jupyter-notebook with the option "*\--ip=127.0.0.1*".
For every linux or unix machine, 127.0.0.1 is the IP address of the
localhost that is the machine itself. This address is used by different
utilities to talk to each other via the loopback interface.

That brings to the discussion on special IP addresses. Look at the
following wiki page for a discussion on this.

https://en.wikipedia.org/wiki/Reserved\_IP\_addresses

When you connect your laptop to the WiFi using your phone as a hotspot,
the point to point communication between your phone and your laptop will
be using one of these private address ranges.

Similarly, when you launch a virtual machine for linux on top of your
windows desktop, then your virtual machine communicates with the host
computer using a virtual bridge adapter using a similar private address
range.

If you directly connect your laptop to the institute WiFi then the IP
address given by the DHCP server at the computer center can be looked at
using the command "*ifconfig*". Look at the string with four numbers
that comes after "inet" in the output of this command to find out your
IP address. There is a lot more information hidden in this output.
Explore.

Homework:

\[1\] List out all the built-in data types of C and C++ language, the
space they consume in the memory and their ability to represent
information.

\[2\] Are there built in data types in Fortran that are not in C? Check
out the complex number, for example and write about that.

\[3\] From what you can pick from Wiki pages, list out the built in data
types in the languages Python, Sage and Octave. Comment on what needs to
be programmed if you were to build up such a functionality in, say, C
language.

\[4\] After you have installed jupyter-notebook and python, launch the
notebook and watch out which port number the notebook server is running
on. Can you also find out the process ID of this notebook server while
it is running?

\[5\] From Wiki pages, list out what are the different languages that
are supported by the jupyter notebook interface. Figure out what is
meant by "markup syntax used in html or xml" and the "mark down" syntax
of jupyter notebook.
