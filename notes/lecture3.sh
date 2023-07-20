# GIT
# - Solves problems.
# - Merges changes.
# - Time travel, revert back to old copies of codes. (fix bugs)
# - Documentation, who wrote what <blame ...> or <tig blame README.rst>(better interface)
# atomic = will get all changes or none, not half.
# master means git is open??
# git <command>




# Making git project
# git clone <name of git to clone>

# OR

# mkdir repo
# cd repo
# name doesnt matter
# git init


# git branch
# git branch -a


# Tell git information
# git config user.name "name"
# git config user.email "email"

# cat .git/config - shows us info

# Do for all Git projects??
# git.config -- global user.name ""
# git.congi8f -- global user.email ""

# Preferred text editor
# git config core.editor "nano"
# git config --global core.editor "nano" <vim><subl**no><code(vscode)>


# mkdir junk
# cd junk
# git status (reports status in junk)

# red plus = untracked files
# .o and .class files not important

# tell which files to care about
# git add <file name> tells git to track file

# which files to add to repo
# only track files that you write - text files, etc
# automatic files that are generated - no, binary files - no, files from internet - no, .o - no, .class - no.
# git add -r * wrong?

# Tells git to ignore untracked file
# <text editor> (vim) .gitignore

# git add .gitignore ( adds files back to being tracked)



# git commit
# fires up text editor and allow you to add a commit message
# Initial version (title).
......... explains file.
# q exits



# git log (shows changes)

# tig (split screen of more info on content it contains)


# *.bak in gitignore puts all .bak files in there
#*.o, *.class, etc


# green files are --staged -> git only takes stages changes and commits them

# how to take all files that have been changed
# git commit -a (a means all or autostage, automatically takes all changed files)
# will fire up text editor .....
# git commit -a "Message here instead." -> message on command line instead of having to open text editor




# git mv date txt dates.txt -> renames file from date to dates (or could use to move file)
# best to use to rename files

# mv <file> <file2>; git add <file2>


# git rm <file> -> better to use

# git commit -a -m "message"






# **** edit, then git commit -a -m "message"

# makes alias to make sentence shorter
# alias c='git commit -a -m'



# BRANCHES
# master is main branch normally
# branch is a version of the code tree.



# git branch (what branch we're on)
# git branch - a (tells us all branches we have)

# make new branch
# git branch <name>
# will be a copy of master


# makes a new branch and switches to it
# git checkout -b <name>
# will also be a copy of master


# switch into a branch
# git checkout <name>

# takes you to last branch
# git checkout - 


# make alias for shorted git checkout
# alias gco="git checkout"




# Taking changs from other branches and merging them to master
# go to master branch
# git merge <name of branch with files to be added>



# merge mini branches with master (takes changes not in branch from master and adds them)
# git merge master




# git diff master???

# git rebase master ????


# upload git bundle
# a single file that contains entire copy of repository
# git bundle create ../<name>.bundle --all

# clone a bundle/ anything
# git clone <clone_name> <name>




