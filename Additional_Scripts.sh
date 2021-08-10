#!/bin/sh
echo -en "Please guess the magic number: "
read X
  echo $X | grep "[^0-9]" > /dev/null 2>&1
   if [ "$?" -eq "0" ]; then
   echo "Sorry wanted a number"
   else
    if [ "$X" -eq "7" ]; then
    echo "You entered the magic number!"
   fi
  fi
 
 
#!/bin/sh
X=0
while [ -n "$X" ]
do
echo "Enter some text (RETURN to quit)"
read X
if [ -n "$X" ]; then
  echo "You said: $X"
fi
done
 
 
#!/bin/sh
X=5
echo "$X"
  if [ "$X" -lt "0" ]
  then
    echo "X is less than zero"
  fi
  if [ "$X" -gt "0" ]
  then
    echo "X is greater than zero"
  fi
[ "$X" = "0" ] && \
  echo "X is the string or number \"0\""
[ "$X" -ge "0" ] && \
    echo "X is greater than or equal to zero"
[ "$X" = "0" ] && \
    echo "X is the string or number \"0\""
[ "$X" = "hello" ] && \
   echo "X matches the string \"hello\""
[ "$X" != "hello" ] && \
   echo "X is not the string \"hello\""
[ -n "$X" ] && \
   echo "X is of non zero length"
[ -f "$X" ]
   echo "X is the path of a real file" || \
   echo "No such file: $X"
[ -x "$X" ]
   echo "X is the path of an executable file"
[ "$X" -nt "/etc/passd" ]
   echo "X is a file which is newer than /etc/passwd"
 
 
 
#Talk!
#!/bin/sh
 
echo "please talk to me..."
while :
do
read INPUT_STRING
case $INPUT_STRING in
   hello)
        echo "Hello yourself!"
        ;;
   bye)
        echo "See you again!"
        break
        ;;
   *)
        echo "Sorry, I don't understand"
        ;;
esac
done
echo
echo "That's all folks!"
 
#Variables
#!/bin/sh
echo "I was called with $# parameters"
echo "My name is $0"
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"
 
#!/bin/sh
/usr/local/bin/my-command
if [ "$?" -ne "0" ]; then
echo "Sorry, we had a problem there!"
fi

#!/bin/sh
while [ "$#" -gt "0" ]
do
echo "\$1 is $1"
shift
done

#!/bin/sh
while [ "$#" -gt "0" ]
do
echo "\$1 is $1"
shift
done

#!/bin/sh
echo -en "What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
myname=`whoami`
fi
echo "Your name is : $myname"
