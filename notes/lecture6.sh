# MERGE COMMIT
# git merge
# contains whatever edits necessary to resolve conflicts which arise during merge
# Has two parents, normal only have one
# calcs changes from each branch from most recent ancestors (merge base)

# EXAMPLE
# seq 1000 > numbers.txt
# head numbers.txt
# git add numbers.txt
# git commit -a -m ""
# git chechout "new"
# git checkout master
# %s%/$/.0/ ???
# 1:500 ??
# git commit ""
# g checkout ""
# copy nums.txt *change something in file
# git commit ""
# cp ~/nums.tct nums.txtgit commit ""
# change something again
# git commit ""
# ******
# git checkout master
# git merge changes


# DIFFICULTIES
# git log (find any issue - )
# tig - shows info better
# 

# Fastforwards master pointer - if currect branch is ancestor of the branch were merging, no conflicts
# git checkout master
# git merge other-branch





# Rebasing (rebase work so merge is successful)
# A git process whereby a git history is rewritten
# Not same commits as before, they get rewritten ', or changed
# git rebase
# may be conflicts *** need to be fixed manually
# results in other-branch for which master is ancestor, so fastforward applies



# git rebase other branch with master****
# git branch
# master
# gco master
# nano file (errors = conflict)
# gc other-branch
# nano file (no errors, new code line in file though = conflict)

# ***gc to checkout branch we want to rebase**
# gc other-braqnch
# git rebase (upstream/)master (takes changes from this branch so they can be added to master)
# tells us conflict and what file - solve manualy and git add and git rebase continue.
# skip commit, or give up and do git rebase -abort

# GIT REBASE --ABORT
# gco master
# gcon master-copy
# gco other-branch - try on branch that doesnt matter
# git rebase master
# resolve errors
# grab the git rebase --continue line
# gco master
# git merge other-branch ** should work
# git log --graph --decorate --oneline




# git fetch upstream
# git rebase upstream/master

# POTENTIAL PROBLEMS
# DO NOT REBASE UNLESS YOU KNOW HOW
# CAN COMPLETLY OVERWRITE A REMOTE BRANCH
# git push -f *** DONT USE THIS


# git push origin
# gco other-branch
# git push origin other-branch ( will fail)
# git push --force origin other_branch (throws away previous history and replaces with your history) (solution but dangerous, local branch now out of date)
# only rebase branches you are using



# labtask
# 3 tasks

# one of standard merge, maybe conflict
# second merge branch into master - take existing bracnh and rebase onto master, then push -f ** (wants to see rebased branch on gitlab
# third: git bisect - bug emerges, something worked before no longer works no one knows why, git bisect helps
# binary search history to find first broken commit to find problem
# git bisect





# EXAMPLE
# cd 282_bisect
# git branch -a
# git checkout square
# python2 arithmetic.py (assertion error, square of 3)
# nano or cat file
# DONT FIX ERROR, FIND HISTORY OF WHERE ERROR OCCURED
# git log --oneline | wc -l (find commit)

# git log --oneline | head
# git log --oneline | tail
# git bisect start
# git bisect bad 7673673 (commit that has error)
# git bisect good 498y538745 (commit that doesnt have error)
# python2 arithmetic.py
# git bisect good
# git arithmetic.py
# git bisect bad
# etc.....
# Will return offending commit
# git show 458347534857834
# git bisect reset
# git revert 3475834578753475
# nano arithmetic.py
# git add, git commit
# python2 arithmetic.py
# 


# 
# 
# 














