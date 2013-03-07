#!/bin/sh

cp -r style ..

cat pre_root.html index.html post_root.html > ../index.html
cat pre_root.html links.html post_root.html > ../links.html
cat pre_root.html documents.html post_root.html > ../Documents/index.html
cat pre_root.html events.html post_root.html > ../Events/index.html
cat pre_root.html announce.html post_root.html > ../Announcements/index.html

cat pre_root.html bat0811.html post_root.html > ../Events/2011/October/BAT/index.html
cat pre_root.html bat0812.html post_root.html > ../Events/2012/October/BAT/index.html
cat pre_root.html batreqs.html post_root.html > ../Documents/Requirements/event_hosting.html

#
# The talks!
#

(cd cthon; ./build.sh)
(cd bats; ./build.sh)
(cd nasconf; ./build.sh)
