#!/bin/sh

#
# Set up the talks
#

cat pre_root_talks.html talks.html post_root_talks.html > ../../Documents/nasconf/index.html

#
# And do them!
#

./yearify.sh 2005
./yearify.sh 2004
./yearify.sh 2003
./yearify.sh 2002
./yearify.sh 2001
./yearify.sh 2000
