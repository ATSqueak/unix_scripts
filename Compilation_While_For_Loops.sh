#!/bin/sh
for i in 1 2 3 4 5
do
echo "Looping ... number $i"
done

#!/bin/sh
for i in Hello 1 "*" 2 Goodbye
do
echo "Looping.... i is set to $i"
done
 

#!/bin/sh
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
echo "Please type something in (bye to quit)"
read INPUT_STRING
echo "You typed: $INPUT_STRING"
done

#!/bin/sh
while :
do
echo "Please type something in (^C to quit)"
read INPUT_STRING
echo "You typed: $INPUT_STRING"
done

#!/bin/sh
set x=0
  while [ $x<10 ] do
   puts "x is $x"
   incr x
  done
 

#!/bin/sh
while read f
do
case $f in
       hello)         echo English  ;;
       bonjour)       echo French   ;;
       "guten tag")   echo German   ;;
       "buenos dias") echo Spanish  ;;
       *)             echo Unknown Language:  $f
                ;;
esac
done < myfile

#!/bin/sh
while f=`line`
do
  case $f in
        hello)          echo English    ;;
        howdy)          echo American   ;;
        gday)           echo Australian ;;
        bonjour)        echo French     ;;
        "guten tag")    echo German     ;;
        *)              echo Unknown Language: $f
                ;;
   esac
done < myfile
 
