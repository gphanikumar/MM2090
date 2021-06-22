# Using Git

# Get to know about github

  * [git-scm](https://git-scm.com/) has everything about the git concept.
  * [Github Guides](https://www.youtube.com/githubguides) channel on youtube has many videos to help you learn about the github environment.
  * [Github Guides](https://guides.github.com/) website has tutorials you can use to learn about github step by step.
  * Download the [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf) and have it handy.
  * [git tutorial](https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners) by HubSpot Product Team

## Installing git

Git is readily available as a package on ubuntu. Install it using the following command.

      sudo apt-get install git

## Create an account on github.com

 * Register yourself on github.com and create an account
 * Enable two factor authentication
 * Pick up a personal access token for use with your local machine

## Create a repository

 * This [tutorial](https://guides.github.com/activities/hello-world/) on guides.github.com is a good start with creating your first repository.

## Working from your local machine

  * In the directory where you want to keep your repositories, run the following command to clone the repository you just created on the github.com website. 

      git clone <url>

Change to the directory that got created and initialize the git environment

      git init
      git remote add origin <url>

You can now make changes to the files you have in the local repository. It is a good idea to create a branch and work on it and not on the master always.

      git checkout -b <branchname>

See which branch you are currently in.

      git branch

Once you create some files or edit some files, you need to place them on staging to prepare to push them to remote server.

      git add <files>

Check the status to see if you have left out any file to be pushed.

      git status

Add a one line description on what you have changed using the commit message

      git commit -m <msg>

You can now push the changes to the remote server after informing which branch to push to.

      git push -u origin <branchname> 

Next time when you want to make changes, pull from the remote machine if any of your collaborators have changed anything in the meanwhile.

      git pull origin master

Time to time, you can view the log of actions done.

      git log

## Managing pull requests

## Managing your website for documentation

  * [Github Pages](https://guides.github.com/features/pages/) uses jekyll and sets up your website for documentation or even your personal website easily. The [markdown syntax](https://guides.github.com/features/mastering-markdown/) makes it rather easy to put up stuff. 
