#!/bin/sh

#
# Set up the talks
#

cat pre_root_talks.html talks.html post_root_talks.html > ../../Documents/BakeAThon/index.html

#
# And do them!
#

./yearify.sh 2012
