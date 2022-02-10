#!/bin/bash
 
if [ -z "$1" ]; then
   printf "\nArguments missing, Usage: '$1 <files to style>'\n\n"
   exit 1
else
   ASTYLERC_DIR=$(dirname $(readlink -f $0))/astylerc
   FILENAME=$1
fi

astyle --options="${ASTYLERC_DIR}" $FILENAME