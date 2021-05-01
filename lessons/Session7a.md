# Application of regex in vi editor

One can use the search and replace command of "sed" also in vi editor.
In the command, press ":" to open the command at the bottom of the
windows and enter the following string to try it out on a file like
"RollList.csv".

      :%s/\^\\(.\*\\),\\(.\*\\)\$/\\2,\\1\@smail.iitm.ac.in/g

The "%" at the beginning tells that search/replace command should be
applied to the whole file. If we wish to apply to first 10 lines, we
would write as follows:

      :1,10s/\^\\(.\*\\),\\(.\*\\)\$/\\2,\\1\@smail.iitm.ac.in/g

The "g" at the end tells that search/replace command should be applied
to the lines as many times as possible. If we wish to apply only once,
we would write as follows:

      :%s/\^\\(.\*\\),\\(.\*\\)\$/\\2,\\1\@smail.iitm.ac.in/

