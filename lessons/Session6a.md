# Commandline text editors

You need to learn to edit files within the shell environment without having to open a graphical user interface. This ability will be a great help when you want to work with a remotely located supercomputer. To make minor edits to your code, to edit the batch submission files etc., you may want to peform text or code editing right in the shell itself. Pick one of the following tools and spend some time learning to use it with comfort.

## vi

The default version of vi editor comes bundled with the Linux installation. You can install vim or neovim if you want a more user friendly version. 

      sudo apt-get install vim

To start editing a file xaa.txt, you need to simply use the following command. If the file does not exist, it will be created afresh.

      vim xaa.txt

You could also try the neovim version of the vim editor.

      sudo apt-get install neovim 

      nvim xaa.txt

## emacs

This editor is equally powerful as vi. 

      sudo apt-get install emacs

## nano

This is a simple editor and easy to get going for simple edits.

     sudo apt-get install nano

Read up about the [nano editor](https://www.nano-editor.org/dist/v2.1/nano.html) - particularly the options to show cursor position at the bottom, toggling display of white space.

## tilde

This editor has a menu system that you can activate using alt key and navigate.

      sudo apt-get install tilde

## Homework
Learn to the following tasks in any of your command line editors
  * Display line numbers
  * Display white space or special characters
  * Goto a particular line number
  * Search for a string and goto its position in the file
  * Perform search and replace for a string
  * Copy and paste
