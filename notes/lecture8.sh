codecode# MOUNTING FILES
# sudo mkdir /t
# sudo bindfs ~/t
# cd /t/modules/ca282

# sudo unmount /t
# sudo rmdir /t
############################################

# FUSE
# fuse - write own file system and run it in user space


# OVERLAY FILE SYSTEM
# overlay file system = multiple levels mounted on top of eachother, writes happen at the top level - building files systems from other file systems


# SLACK AUTOMATIC RUN AND COMPILE THROUGH SAVE









# DOCKER
# native OS,                   DOCKER (in middle)                        VM


# docker run -it --rm alpine
# which ls
# ps aux
# ls -l

# take application (web server), package it as a docker image and share image out and create instances of it wherever needed.



# COMMANDS
# docker run --it --rm alpine
# docker run --it --rm --name alpine alpine (gave it a name)
# run = creates a container (execution environment)

# docker ps (same as docker container)
# docker container
# ls, stop (stop alpine), start

# docker exec -it alpine <date> ( format can be used to run commands)
# date command
# exec ( runs a command inside an existing container)

# docker exec -it alpine <sh>
#  runs shell

# image = like and OS image on a memory stick - from which we build a container - the thing from whcih containers are built  - DOCKERHUB
#         comtainer: an instances of an image, running



# ls
# rm
# images
# build
# commit
# network
# compose






##################################################

#EXAMPLES 
# cd 01-docker-run
# make run (runs alpine image)
# docker run -it --rm --name 01-docker-run alpine: latest

# -i --interactive (image will remain attacked in terminal)
# -t --terminal or --tty (assigne a sudo terminal)
# -it (interavtive image - single hyphen)
# --rm ( remove container when it stops)
# --name foobar ()








# TERMINAL 1
# docker run -it alpine
# docker container start tender_buck
# docker container stop tender_buck
# docker container tender_buck
# docker run -it --rm alpine (removes automatically)

# docker run -it --rm --name abraacadabra alpine


# TERMINAL 2
# docker dontainer ls
# docker container ls -a
# docker container ls

# docker container stop abracadabra
# docker container stop abracadabra -t 0 (makes it go away) *not a good idea




# docker run --detach --rm --name <$name >--publish 8000:80 httpd:latest (port 80 forwarded to port 8000 on local host)
# docker container ls




# make date, make conect (connects and runs a shell), ls -l, cd <dir>, cat <file>
# make stop


# docker run --detach --rm name $name --publish 6379:6379 redis:latest
# make run
# make count
# docker container stop 031-redis
# make run
# make count




# docker run --detach name $name --publish 6379:6379 redis:latest (no rm)
# make run
# make count
# docker container stop 03b-redis-restartable
# docker container start 03b-redis-restartable (not a new container, same one restarted)
# make rm
# make remove














# BUILDING CUSTOM IMAGES (takes existing and edits that)

# NOT GOOD WAY (MANUALLY)
# docker run --detach --rm - name $(name) http:latest
# docker cp ./nobody.txt $(name):$(directory)
# docker commit $(name) $(name)
# docker image ls
# make run
# make stop

# GOOD WAY
# cat Dockerfile (recipe for how to build an image)
# docker build . - t $(name)
# docker image ls G 0
# docker image rm <name>
# FROM http:latest (debian:latest) 
# RUN: echo1 (apt- get update) (apt-get -y install build-essential python3), (apt-get -y install vim-nox) 
# COPY: nobody.txt /usr/local/apache2/htdocs/index.


# docker build . -t junk






















# TASKS
# fork and clone

# first task /30
# make build, make run, make get, make stop will be run - build a container
# make docker file for a websserver - exactly like examples



# second task /30 (/70 interesting way task is done NO HTTP (SSH, DATABASE AND DATABSE QUERIE))
# write a docker compose file to bring up at least 2 services
# message must pass from one container to other then to standard output
# wget to webserver
# dont change makefile
# change bash script **
# docker compose make changes ** (add files, add docker files etc)
# 