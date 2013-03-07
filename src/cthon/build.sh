#!/bin/sh

#
# Set up the talks
#

cat pre_root_talks.html talks.html post_root_talks.html > ../../Documents/ConnectAThon/index.html

#
# And do them!
#

./yearify.sh 2013
./yearify.sh 2012
./yearify.sh 2011
./yearify.sh 2010
./yearify.sh 2009
./yearify.sh 2008
./yearify.sh 2007
./yearify.sh 2006
./yearify.sh 2005
./yearify.sh 2004
./yearify.sh 2003
./yearify.sh 2002
./yearify.sh 2001
./yearify.sh 2000
./yearify.sh 1999
./yearify.sh 1998
./yearify.sh 1997
./yearify.sh 1996
./yearify.sh 1995

