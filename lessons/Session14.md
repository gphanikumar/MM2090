# Introduction to python using jupyter notebook interface


## Installation:

You have multiple options while installing python and jupyter notebook
to get going on your laptop. The options are as follows:

1.  Install python and jupyter-notebook using "*sudo apt-get install
    python*" etc.,
2.  Install anaconda. It comes with all things python for you to use.
3.  Install sagemath. It comes with python and jupyter included.

Watch out if you are installing these using a virtual machine. The
bundle of sagemath will take almost 8 GB as it has a whole bunch of
things inside it. If you don't have enough space in the virtual disk,
consider using a shared folder feature on the Oracle VirtualBox to
install. You can create a folder in one of your drives in windows
called, say, "LinuxShare" and ask VirtualBox to share it as a permanent,
auto-mount share to the virtual box with a specific mount path such as
"/opt/LinuxShare". When you restart the VirtualBox, your share will be
available from within the linux OS and you can use it to store the
folders of sage and such heavy duty software.

Alternatively, you can create another VDI disc on your host computer,
make it available to the virtual machine, mount it from within the
virtual machine at a mount path and use it. This route is faster but
limited again by the size of the VDI disc you chose to create in the
first place.

## SageMath

Pick up the latest version of [sagemath](https://www.sagemath.org/) and have it installed on your machine. 

## Launching

If you have installed jupyter-notebook natively, then you can lauch it
from your home folder simply by running "*jupyter-notebook*". If you get
an error abour socket or IP address, try running it as
"*jupyter-notebook \--ip=127.0.0.1*".

If you have installed sage, then launch it from your home folder using
the command where the "*/path/to/sage*" is where you unzipped the sage
binary after downloading it. It is a good idea to keep it in a path like
"*/opt/sage-9.2/*".

       /opt/sage-9.2/sage --notebook=jupyter --ip=127.0.0.1

Make an alias for the sage command, keep that alias in your .bashrc so 
that you can just type sage at the command prompt to get it launched
next time around.

Once the jupyter notebook opens in the browser, you can create a new
notebook, choose the kernel to be python 3 and you are ready to use
python from within this notebook.

## Introduction to jupyter notebook

The two major types of cells in the jupyter notebook are called "code"
and "markdown". You can click on a cell and use the menu options to
convert cells of one type to other. Use the cells of type "code" to type
in your python code. Use the cells of type "markdown" to type in your
documentation. The markdown syntax is illustrated in the Sandbox file
uploaded on the moodle page.

Cells of type "code" will get numbered chronologically as you keep
entering new ones. You can delete cells and move them up and down as
needed.

Whenever you open a notebook to continue working from your previous
sitting, make sure you "run all the cells" using the menu option under
"cells" to ensure all the variables etc., are available in the memory.
You don't have to worry about this as long as you continue working on
the notebook without closing it.

Jupyter will save your notebook once a while. It is a good idea to click
on the save button and name the file meaningfully. The files will be
with an ending ".ipynb" which are pure text files. You can open them
using vi editor in a terminal and edit if you need to. Don't do it
unless you are sure of the syntax. Look at the last few lines of this
file, you will notice metadata that says what language of script is
being stored in the cells of that file etc.,

You can share the "ipynb" files to share your notebooks with others. The
format is fairly universal and will work on most machines without any
change. Sometimes if the corresponding language is not installed, the
notebook file will still show the content but may not be able to let you
modify it.

## Using jupyter notebook on the cloud

You can try one of the following options to try jupyter notebook on the internet while you get the sagemath installed on your laptop.

  * [cocalc](https://cocalc.com/) - you can sign-in using your google account and use the free trial to try out python, sage, octave and a whole bunch of languages(R, Julia, C++, CP, Haskell, Javascript, Prolog, Singular, Sparql) and environments (bash).
  * [google colaboratory](https://colab.research.google.com/) - offers a cloud based jupyter notebook for python.
  * [mybinder](https://mybinder.org/) - you can have a github repository created to store your notebook files and point that to the mybinder and use the browser to work interactively. You can use Python, R and Julia on this platform.
  * [Datalore](https://datalore.jetbrains.com/) - you can sign in using your google account and use the notebook interface for python, kotlin and various kernels to work on the cloud.
  * [kaggle](https://www.kaggle.com/) - you can register with your google account and user python and R in jupyter notebook.
  * [Microsoft Azure Notebooks](https://notebooks.azure.com/) - you can point your github repository of notebooks and view them online.

## Introduction to python using jupyter notebook.

Copy the jupyter notebook files linked on the index page to see what is
covered in the class. Some description is already there in the notebook
itself. You can edit this notebook from within the jupyter notebook of
your machine or on the cloud to explore more.

Sometimes it may happen that your installation of sage does not have the module you need for your python code. Look up the help page on [importing](https://ask.sagemath.org/question/35457/importing-python-packages-into-sage-or-vice-versa/) packages into sage to extend its capability.

## Homework

1. Edit the jupyter notebook to explore a mapping of all data types
of C language with the corresponding ones of python.

2. Figure out what data types are available in python that are not
readily available from C.
