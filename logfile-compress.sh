#!/bin/bash

# Enter the path of the directory/file in the variable below.
filepath=/var/log

for file in $filepath/*.log || for file in $filepath/*.txt
do
    tar -czvfr $file.tar.gz $file
done

if [ $? eq 0 ]
then 
    echo "Success. The files have been compressed successfully." 
else
    echo "Error. There was an issue while compressing the files."
fi