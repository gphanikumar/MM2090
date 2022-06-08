# LaTeX environment

## On Ubuntu 20.04 LTS

You can install the following packages to have the latex typsetting environment ready on your desktop.

      sudo apt-get install texlive texlive-base texlive-latex-recommended texlive-latex-extra

You will also need few packages for scientific document preparation. Have these also installed and kept handy.

      sudo apt-get install texlive-publishers texlive-science texlive-pstricks texlive-pictures

If you have enough space, you can install ALL the texlive packages.

      sudo apt-get install texlive-full

You will need a nice editor to do syntax highlighting and help compile the document comfortably. TeXmaker is a good choice. If you are using the KDE as your graphical user environment, then kile is also a good choice.

      sudo apt-get install texmaker
      sudo apt-get install kile

You will also need a good viewer for ps and pdf files. Okular is a good choice. Evince is also a nice viewer.

      sudo apt-get install okular
      sudo apt-get install evince

## On the cloud

There is a nice cloud based platform to prepare latex documents. If you register with the email provided by your university then you can avail extra features that come with subscription. IIT Madras has done that for its students and faculty members so register with your email on smail.iitm.ac.in domain.

 * [https://www.overleaf.com/](https://www.overleaf.com/)

## Windows users

The miktex distribution is for all platforms but for windows, its a good one.

 * [https://miktex.org/](https://miktex.org/)

## Image conversion

It is better to use vector formats (eps, ps, pdf, svg ...) than raster formats (jpg, png, bmp, tif ...) to include images. Usually we use eps figures while compiling tex documents using LaTeX and jpg figures while compiling using PDFLaTeX. To convert images across formats, following tools will be of use.

  * [ImageMagick](https://imagemagick.org/) - if it is installed on your Linux machine then "man convert" should help you get started.
  * [ImageJ](https://imagej.nih.gov/ij/download.html) - it is a java utility that helps not only in converting images but also measuring stuff on the images including metallography.

## Editing tex files

Once you have learnt the syntax well, you should be able to write LaTeX documents in plain text editors like vi or emacs. Until then, a syntax-aware text editor can help a lot. Here are a few suggestions.

  * [TeXMaker](https://www.xm1math.net/texmaker/) is a context sensitive, syntax aware editor for tex documents. It comes with templates, quick references and a nice IDE-like appearance.
  * [kile](https://kile.sourceforge.io/) is useful if you are using KDE as your graphical interface. 
  * [kate](https://apps.kde.org/kate/) is a syntax-aware text editor on KDE useful also for LaTeX.

