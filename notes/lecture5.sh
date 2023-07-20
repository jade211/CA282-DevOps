# git remote -v

# git clone ~/einstein
# can clone a whole directory

# error messsage when pushing changes to the master(current) branch

# rm -fr (einstein)name

# mkdir test.git
# cd test.git
# pwd
# git init
# ls - la( shows all the hidden files - .git files)

# git init --bare
# initialized empty git rep-o in the directory
# git clone test.git test (cloning the repo and push without errors)
# ther are bare repos - can push to bare repos

# do add and commit for the changes

# git pus
# git remote
# git remote -v
# git push

##############################

# CLONE FROM GITHUB WEBSITE
# HTTP
# grab HTTPS (protocol over whihc github talks)
# git clone <http> (paste link into terminal)

# OR

# SSH
# grab ssh
# git clone <ssh url>


# SET UP SSH ** (can use HTTP)

# Fork project and clone
# cd into it
# grab url of original project
# git remote add <pick name (ie: upstream)> <url>
# git fetch upstream
# git remote
# git remote -v
# git fetch upstream (fetches entire project, history etc locally)
# git branch -a


# OUT OF DATE
# merge changes to update from on repo to other
# git merge upstream/master
# git push origin master
# git push (also works??)



# MAKE A CHANGE
# git remote add <upstream> <url>
# git diff upstream/master





# CHECK THAT MY MASTER BRANCH IS UP TO DATE WITH CURRECT UPSTREAM PROJECT - BEFORE MAKE CHANGE
# git fetch upstream && git merge upstream/main
# git diff upstream/main
# git checkout -b 'feature-branch' - makes new branch and cds into it

# mkdir feature-b
# date >> feature-b/date.txt
# git add feature-b/date.txt
# git commit -a -m "add feature-b"
# git commit -a -m "add feature b." ??

# merge req on github  - write explanation message 




# GITLAB
# gitlab.computing.dcu.ie

# username TASK 1
# create own fork of project - (click fork)
# make new file in same directory of your username
# commit
# push back to gitlab
# create merge request
# DO NOT DO FROM MASTER BRANCH


# sequence TASK 2, calculator task
# Add implementation s in diff languges on diff branches, merge them
# make file to run/ compile code
# add anything necessary to be able to compile it, add tests to file. copy python implementation ??
# push entire project back to gitlab

# INDENT BY TAB **** (in make file)




# OVRVIEW
# fork, thrn clone
# git clone <url>
# cd into it
# looking at master branch for second task
# git checkout -b 'jadeiuabc121'
# https://gitlab.computing.dcu.ie/hudsonj5/ca282-usernames.git
#  git add users/jadejnf
# git commit -a -m ""
# git push
# git 