# secret 1
# run ls



# WEEK 9 - Javascript
# ssh
# Continuous Integration (CI)

# RPN CALCULATOR
# node = javascript interpreter (like python)
# Used for implementing servers

# console.log("hello")

# package.json = describes project and dependancies

# npm install
# make node-intsall

# node index.js (to run)
# make run (also runs project)
# http -> endpoint

# clients[] (users, web borwsers)                  <------->                                    Servers[]
                #                                    HTTP
                #                                    POST
                #                                    GET ** (mostly just files)
                #                                    PUT
                #                                    DELETE
                #                                    CONNECT [web sockets, upgrade requests]    


# FIRST API
# Make a server
# GET/TEST/RANDOM
# GET/TEST/MAXIMUM
# POST/TEST/MAXIMUM
# make random (starts server, runs test, random api is working)



# SECOND API (rpn calc)
# Make rpn (will fail)
# make run
# cdr 3
# make quick **


#                               TWO PAGES
# cdr1                                                       index.js                                         
# make watch


# port 8000
# app.post stuff ** express app that deals with http requests
# app.get


# TASKS
# fork and clone RPN files
# implement endpoints for post(push), get, get(peek), get(pop), get(add), get(sub), get(mult), get(divide)


# make watch
# got to app.post
# fill in implementation of this
# copy other app.post request above
# paste in
# change "/test/max" to "/push" ------first line
# change max to "values" --------third line
# change Number to - Array.isArray(....) ------fouth line
# change maximum to vales everywhje
# sever pushing values


# above console say values = stack=stack.concat(values)
# below console
# res.setHeader()
# res.send("server....ok, pushing ${values}")
#  
# 



# peek
# copy app.get
# change to /peek
# if stack.length == 0
# change max... to stack empty

# value = stack[stack.length -1]
# sending top of stack, value
# last line



# POP
# grab get
# change to POP
# stack.pop()
# changeto values

app.get
# length
# popping to length of stackm value







# ADD
# app.get

# if stack.length < 2
# bad req stack too small
# result value1 = stack.pop  + stack.pop
# stack.push(result)
# print result) + n)




# MULTIPLY
# grab add and chane + to *

# res.send("") ** for mult, add, sub



# SUBTRACT
# grab mult, change to minus
# in wrong order - before result. val1 = stack.pop()
# result = stack.pop() = val1




# TASK2

# MAKE THOSE TASKS RUN IN THE CI - CHANGE CONFIS DO THE TESTS RUN IN GITLAB
# 



# TASK 3
# CHANGE SERVER - PUT IN DOCKER IMAGE THING, SERVERS?? PUSH
