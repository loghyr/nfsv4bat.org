#!/bin/sh

#
# Set up the talks
#

cat pre_root_talks.html talks.html post_root_talks.html > ../../Documents/BakeAThon/index.html

#
# And do them!
#

./yearify.sh 2012
./yearify.sh 2014
./yearify.sh 2017
./yearify.sh 2018
./yearify.sh 2021
