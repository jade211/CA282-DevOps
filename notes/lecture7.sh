# C sidenote: gcc -o hello hello.c && ./hello (compiles and runs code)




# builds infrastructure of project (make file - build project)
# make ***
# make install ***

# make (builds project)
# make install (builds)
# mindful of tabs and spacing

# make connect, make attach, make restart, make status





# SAMPLE QUESTION

# build o files

# do not use gcc because entire file has to be in that file
# Do gcc -c -o rpn.o rpn.c
# gcc -c -o f_divide.o f_divide.c

# type sigs in rpn file

# make clean
# make
# gcc -c - o hello.o hello.c
# gcc -o hello hello.o
# gcc -c -o <rest of files.o> <rest of files.c>
# make clean
# make
# touch f_add.o f_add.c
# make (will gcc touched file(s))

# -c function builds -o file

# make clean
# make install (builds and copies into file location)




















# JAVA MAKE EXAMPLE
# makefile or Makefile or example.mk
# here called Makefile **

# TARGET: PREREQUISITE....
        #   COMMANDS....
        #   COMMANDS....
        #   COMMANDS....



# hello: hello.o
        #  gcc -o hello hello.o (builds hello from hello.o?)
    ^
    |
<single tab character> 



# hello.o: hello.c
         # gcc -c -o hello.o hello.c
    ^
    |
<single tab character> 

# make hello.o
# make hello
# make (creates first target in file (hello in this case - change order does opposite))
# make build





# ORDER MATTERS
# rpn: rpn.o f_add.o .....
     # gcc -o rnp rpn.o ......

# hello: hello.o
        #  gcc -o hello hello.o (builds hello from hello.o?)

# hello.o: hello.c
         # gcc -c -o hello.o hello.c




# Phony target
# build: hello (phony target - artificial target introduced to force build to go looking for certain dependancies)

# hello: hello.o
        #  gcc -o hello hello.o (builds hello from hello.o?)

# hello.o: hello.c
         # gcc -c -o hello.o hello.c

# .PHONY: build (tells system what target(s) are phony)





# Make make quiet
# build: hello
       # @true (makes make quiet)

# hello: hello.o
        #  gcc -o hello hello.o (builds hello from hello.o?)

# hello.o: hello.c
         # gcc -c -o hello.o hello.c

# .PHONY: build (tells system what target(s) are phony)






# Make variable creation
# name = Bob
# n = No this

# build: hello
       # @true (makes make quiet)
       # echo hello $(name)    -        # (echo hello No thisame ( will print this way without () )

# hello: hello.o
        #  gcc -o hello hello.o (builds hello from hello.o?)

# hello.o: hello.c
         # gcc -c -o hello.o hello.c

# .PHONY: build (tells system what target(s) are phony)







# WILDCARD
# src = hello.c f_add.c f......
# OR
# src $(wildcard *.c)
# OBJ = $(src:.c=.o)

# build: 
        # echo $(src)
        # $(obj)
        # echo $(obj)  # automatically builds object files

# hello.o: hello.c
        #  gcc -c - o hello.o hello.c

# rpn.o: rpn.c
        #  gcc -c - o rpn.o rpn.c

# .PHONY: build

















# AUTOMATIC VARIABLES
# src $(wildcard *.c)
# OBJ = hello.o # $(src:.c=.o)

# build: 
        # echo $(obj)  # automatically builds object files

# hello.o: hello.c
        #  gcc -c o $@ hello.c

# .PHONY: build





# AUTOMATIC VARIABLES
# src $(wildcard *.c)
# OBJ = hello.o # $(src:.c=.o)

# build: 
        # echo $(obj)  # automatically builds object files

# hello.o: hello.c
        #  gcc -c -o $@ $<

# .PHONY: build












# AUTOMATIC VARIABLES
# src $(wildcard *.c)
# OBJ = hello.o # $(src:.c=.o)

# build: 
        # echo $(obj)  # automatically builds object files

# %.o: hello.c
        #  gcc -c -o $@ $<            # will work for any target %.o, target will always be %.c

# .PHONY: build






# AUTOMATIC VARIABLES
# src $(wildcard *.c)
# OBJ = $(src:.c=.o)

# build: %(obj)
        # echo $(obj)  # automatically builds object files

# %.o: %.c
        #  gcc -c -o $@ $<

# clean:
        rm -fv $(obj)

# .PHONY: build clean










# AUTOMATIC VARIABLES
# src $(wildcard *.c)
# OBJ = $(src:.c=.o)

# build: $(obj)
       # @true

# %.o: %.c
        #  gcc -c -o $@ $<

# clean:
        rm -fv $(obj)

# .PHONY: build clean








# AUTOMATIC VARIABLES
# src $(wildcard *.c)
# OBJ = $(src:.c=.o)

# bin = hello
# bin += rnp

# build: $(obj) $(bin)
       # @true

# %.o: %.c
        #  gcc -c -o $@ $<

hello: hello.o
        gcc - o $@ $^

fsc = $(wildcard f_*.c)
fs = $(fsc:.c=.o)


# TAKES TOO LONG USE FS INSTEAD----- rpn: rnp.o f_add.oc f_subtract.$
# rpn: rpn.o $(fs)
       # gcc -o $@ $^


# clean:
        rm -fv $(obj) $(bin)

# .PHONY: build clean










# mkdep




# AUTOMATIC VARIABLES
# src $(wildcard *.c)
# OBJ = $(src:.c=.o)

# bin = hello
# bin += rnp

# build: $(obj) $(bin)
       # @true

# %.o: %.c
        #  gcc -c -o $@ $<

hello: hello.o
        gcc - o $@ $^

fsc = $(wildcard f_*.c)
fs = $(fsc:.c=.o)


# TAKES TOO LONG USE FS INSTEAD----- rpn: rnp.o f_add.oc f_subtract.$
# rpn: rpn.o $(fs)
       # gcc -o $@ $^


# clean:
        rm -fv $(obj) $(bin)

# depend:
    mkdep $(src) # creates .depend file containing all dependancies

# include .depend

# .PHONY: build clean depend









# LAB TASK LAST TASK
# GO TO HASH.SH
# CHANGE: uncomment 3 lines
# COMMIT ETC...
# Takes hash of your username, replace his hash with your hash and upload to einstein - verification bcs hash
# 





