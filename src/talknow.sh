#!/bin/sh

#
# talknow.sh talks10 2010
#

cat pre_dir1_now.html $1.html post_dir1_now.html | sed "s/\(.*\)\(YEAR\)\(.*\)/\1 $2 \3/" > ../$1/index.html

