#!/bin/sh

#
# yearify.sh year
#

cat pre_dir1_talks.html $1.html post_dir1_talks.html | sed "s/\(.*\)\(YEAR\)\(.*\)/\1 $1 \3/" > ../../Documents/BakeAThon/$1/index.html

