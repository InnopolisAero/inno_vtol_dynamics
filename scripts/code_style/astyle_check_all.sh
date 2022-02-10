#!/bin/bash
# Check http://astyle.sourceforge.net/astyle.html


ASTYLE_SCRIPT_PATH=$(dirname $(readlink -f $0))/astyle_check_single_file.sh
PACKAGE_DIR=$(dirname $(readlink -f $0))/../..
cd $PACKAGE_DIR


for filename in src/*.cpp; do
   $ASTYLE_SCRIPT_PATH $filename
done
for filename in inlcude/*; do
   $ASTYLE_SCRIPT_PATH $filename
done


# Delelte temp file and Cause an error if code style is not ok 
if [ -s "temp_astyle_output.txt" ]
then
   echo "Your code does not correspond to the code style."
   rm temp_astyle_output.txt
   exit 1
fi
rm temp_astyle_output.txt