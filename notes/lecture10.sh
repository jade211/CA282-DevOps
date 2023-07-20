# SSH

# ssh is a transport protocol - 2 hosts communicating
# used as a shell
# used for remote command execution, remote login
# scp -r einstein:local tmp/local = copying files between systems/ machines??

# rsync better ** remote over SSH
# rsync einstein:local ~/x
#       machine:directory

# port forwarding: 2 hosts
# person         gateway     firewall    (port 80()
# creates a port that gets forwarded straight to port 80 safely.

# Tunneling (not reccommended)
# tcp on top of tcp



# Creating SSH Environment
# ssh einstein
# cant be established.... - checking remote host you are talking to is who you think it is - have to confirm
# ssh nach
# cant be established.... - checking remote host you are talking to is who you think it is - have to confirm
# ssh einstein-runner
# cant be established.... - checking remote host you are talking to is who you think it is - have to confirm

# password - keypairs
# private key              server               <-    public key
# keep private key         prove who you are          goes to server


# ssh-keygen
# enter passphrase
# ls -l .ssh - check new files (id_rsa, id_rsa.pub)
# take public key and put it on another server to prove ownership of private key
# ssh-copy-id -i .ssh/id.rsa.pub einstein
# ssh einstein (no longer asking for password, asks for passphrase)
# view .ssh/authorized_keys


# scp .ssh/id_rsa.pub bach:
# ssh bach
# mkdir .ssh
# ls
# mkdir -p .ssh
# mv id_rsa.pub .ssh/authorized_keys
# cd .ssh
# ls -ld
# chmod 0700 ~/.ssh
# chmod go-rwx ~/.ssh
# chmod 0700 (gives owner full permission)
#### chmod 0444 readable by everyone
#### chmod 0755 readable by everyone, writable by me
#### chmod 0711 
# chmod 0^C
# ls -ld
# scp .ssh/id_rsa.pub einstein-runner
# ssh-copy-id -i .ssh/id_rsa.pub einstein-runner
# cd .ssh
# cp id_rsa.pub authorized_keys


# cd
# ssh bach
# ssh einstein
# asks for password again***
# new key generate again (bad idea)
# ssh-keygen ^C



# SSH PROCESS AGENT CREATION (MANAGES YOUR KEYS)




## WRONG
# eval 'ssh-agent'^C



# no more passwords / passphrases
# eval 'ssh-agent'
# env | grep SSH
# ssh-add -l
# ssh-add -l ~/.ssh/id_rsa
# ssh-add ~/.ssh/id_rsa
# ssh-add -l
# ssh bach
# ssh einstein
# ssh einstein-runner







# ps aux | grep ssh.a (shows all ssh agents running)
# killall ssh.agent




# RECOMMENDED WAY (SESSION SCRIPT- NOT BASHRC)
# use funtoo.org keychain??


# eval 'keychain'
# resuses running keychain instead of creating a new one

##### NO** eval 'keychain ~/.ssh/id_rsa'


# eval 'ssh-agent' (will work)
# ssh-add ~/.ssh/id_rsa
# ssh bach
# ssh einstein



# -A (ssh takes locally running agent and brings forward to remote connection)
# ssh -A bach
# ssh einstein

# better
# in ssh directory have a config file







# DEALING WITH GIT
# special key for git git(lab, hub etc)

# eval 'ssh-agent'
# git clone http://klsncldsncjsdn (DOESNT WORK)


# tell git your publin key
# cat ./ssh/id_rsa.pub
# copy it and paste in gitlab-profile-refernces-ssh keys-paste it in- title temporary - add keys- 
# 

# go back and git clone git@fgitlab.... ssh clone and it will work



# 1st task
# given private key, use private key to use docker container to do something.



# 2nd task
# set up docker image given public key (in authorized keys image) so person can log in using private key



# 3rd task (forced commands)
# ssh key but key can only be used to run single command
# make agent
# go to bach
# to to autho keys file
# change to command= "date" to first line
# key will only be able to run date command
# when you ssh you get the date back





#  
