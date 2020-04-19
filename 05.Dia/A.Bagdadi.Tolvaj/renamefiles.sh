#!/bin/sh

sor=1
FILES=./*.jpg
for file in $FILES
do

    foo=$(printf "%03d" $sor)
    mv "./$file" $foo"_A.Bagdadi.Tolvaj.jpg"

    echo "$file -> $foo"
    sor=`expr $sor + 1`
done
