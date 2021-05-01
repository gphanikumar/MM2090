# Introduction to the vi editor

It is a good idea to learn the vi editor to edit your shell scripts,
codes etc., on the terminal. Install the package "vim" to help you with
syntax highlighting.

## Modes 
 * Navigation mode
 * Insert mode 
 * Command mode

## Navigation mode
Press Esc key once or more to ensure you are in the navigation mode. Each of the following character(s) will perform the action as described across.

| character(s) | action |
| ------------ | ------ |
| k | Take the cursor up |
| j | Take the cursor down |
| l | Take the cursor right |
| h | Take the cursor left |
| b | Take the cursor to beginning of the word |
| e | Take the cursor to end of the word |
| Shift+\] | Take the cursor to beginning of next paragraph |
| Shift+\[ | Take the cursor to the beginning of previous paragraph | 
| v | Select text |
| y | Yank selected text |
| yy | Yank current line |
| p | Paste yanked text after current line |
| P | Paste yanked text before current line |
| d | Delete selected text |
| dd | Delete current line |
| x | Delete current character |
| 12dd | Delete 12 lines from the current position |
| u | Undo the last change |
| D | Delete content of current line from current position till end. |
| C | Replace current line with a new line in insert mode |
| dw | Delete current word |
| 3dw | Delete 3 words from the current position |
| cw | Overwrite the current word by entering inert mode |
| r | Replace a single character |
| R | Overwrite characters from the current position onward |
| s | Substitute one character at the cursor position |
| S | Substitute current line |
| \~ | Change case (upper/lower) of character at current position |
| Shift+zz | Save the file and quit |

## Insert mode

| character(s) | action |
| ------------ | ------ |
| i |   Enter insert mode from current position |
| I |   Enter insert mode from beginning of line |
| o |   Create a new line below current position and enter insert mode |
| O |   Create a new line above current position and enter insert mode |
| a |   Enter insert mode after current position |
| A |   Enter insert mode at the end of the line |
| Esc | The escape character takes you out of the insert mode in to navigation mode |

## Command mode

In the navigation mode, press : to enter command mode.

  ---------------------- --------------------------------------------------------------------------------------------------------------
  :set number            Display line numbers
  :set nonumber          Do not display line numbers
  :set ignorecase        Ignore case while searching
  :!\<command\>          Open a shell, run \<command\> and wait to return to editor
  :w                     Write out the file
  :q                     Quit editor (assumes no changes are pending to be saved)
  :wq or :x              Save the file and quit the editor
  :q!                    Quit editor without saving changes made
  :s/search/replace/g    Search and replace strings on the current line
  :%s/search/replace/g   Search and replace strings globally
  :42                    Go to 42^nd^ line
  :r \<file\>            Read the contents from \<file\> and paste them at the current position
  /\<string\>            Search for \<string\> and go to its first occurance. "n" to goto next occurance. "N" for previous occurance.
  :/\<string\>           Search for \<string\> and go to beginning of the line of its first occurance.
  ---------------------- --------------------------------------------------------------------------------------------------------------

In the reg-ex pattern for search, the matched pattern is stored in the
variables \\1, \\2 etc., for use while replacing.

For example, to replace all occurances of a word after Hello to be
replaced and swapped with Hallo, then we can use the following command.

      :%s/Hello \\(.\*\\)/\\2 Hallo/g

To apply search and replace for 5 lines before the cursor and 7 lines
after the cursor, use the following command.

      :-5,+7s/Hello \\(.\*\\)/\\2 Hallo/g

## Homework

1. Take an input file that contains three columns of data, say from a CSV file using LibreOffice Calc or Microsoft Excel. Using vi editor clean up the file to make tab character as the delimiter between fields. Change the order of columns using vi commands.
2. Open one of your old source codes and rename couple of variables using vi editor. Ensure that the program functioning did not change test by running the code before and after renaming of the variables.
3. If you open a file created in Microsoft Windows and open in vi editor on linux, you will see line break characters at the end of each line. View it by using "-b" option when opening vi editor. Find out how to remove them. Also find out how to replace each tab character in your source code with, say, four spaces.

