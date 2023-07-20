# whats wrong with this sentence?
# find /usr/share -type f  -name *.html
find /usr/share -type f  -name "*.html" CORRECT

# touch
# touch updats timestamp on file

# how diffrent
find * -type f
# shows hidden files

find . -type f
# shows everything


| wc -1 # counts files


# better to use "" instead of ''

( echo hello; echo world; )
cat t
# hello
# world
# shell spawns a subprocess to run the commands

{ echo hello; echo world } > t
{ echo hello; echo world }
cat t
# hello
# world
# commands execute in current shell


( cd /etc/pwd; ); pwd
{ cd /etc/pwd; }; pwd



# Signals
echo $$
# $ is current process identifier

watch -n 1 date
# calls another command repeatedly

$1 # are reading from command line 
$2 # are reading from command line 


#!/bin/sh
echo "$1"
exec (maybe not necessary) echo "$2"

# sh <name> hello world
# prints: 
# hello
# world
# sh <name> -n hello world
# potential problem interprets -n as arguement
# fix?

echo $*
# or
echo $@

# sh name one two three
# extends to all


touch $@
# sh name.sh one two three (breaks them up into 3 regardless o quotes "one two three")

touch "$@"
# sh name.sh one "two three" (works, will give one, "two three")

////////////////
first="$1"
shift
echo "$first"
echo "&@"






# for loops

for v in one two "three four"
do
    echo "$v"
done


///////////////////////////
for v in "$@" # command line
do
    echo "$v"
done

//////////////////////////
for v; do
    echo "$v"
done

///////////////////////////////
for v
do
    echo "$v"
done


////////////////////////////////// 

#!/bin/sh
set -e # chance of failure, stop execution instantly as a query exits while having a non-zero status.

mkdir /blah
cd /blah
touch abc

# OR

#!/bin/sh
mkdir /blah && cd /blah && touch abc # && is and (if first succeeds)

# OR

#!/bin/sh
set -e
cd /var/tmp || cd ~/tmp || cd /tmp # || means or


###
test -f /etc/fstab
test -d /ets/fstab

# tests conditions
test -f # tests if file exits
test -f /etc/passwd
# succeeds
test -f /etc/passwd/blah
# Fails

test -d /etc
# testing if directory exists

test "$x" = 1




[ -f /etc/fstab ]
# [snvc] is also test command





/////////////////////////////

#!/bin/sh

set -e

directory="$1"
shift

if ! test -d "$directory"                        # if [$? != 0]
then
    mkdir "$directory"
fi

cd "$directory"
exec "$@"


# if command.....
# then
#     ....
# elif command
# then
#     .....
# else
# fi




//////////////////////////
# while loop


#!/bin/sh
seq 20
    while read n
    do
        echo "file-$n.txt"
    done |

    # {
    #     read one
    #     while read another
    #     do
    #         echo $one $another
    #     done
    # }


//////////////////////////////////


#!/bin/sh

n="$1"
i=0

while test $i -t $n
do
    i=$(( i + 1 ))
    # echo $i
    mkdir "-p dir.$i"
done


/////////////////////////////
#!/bin/sh

n="$1"

for i in $( seq $n )
do
    mkdir -p "dir.$i"
done

//////////////////////////////

#!/bin/sh

n="$1"

mkdir -p $( seq -f "dir.%.0f" $n )

/////////////////////////////////

#!/bin/sh

n="$1"

seq -f "dir.%.0f" $n |
    xargs -n 2 echo mkdir -p
    # -n (read however many at a time)
    # xargs mkdir -p (makes directories)
    # xargs rmdir -p (removes directories)


# xargs takes command as command line arg and reads as standard inp







