#!/bin/sh

cp -r style ..

cat pre_root.html index.html post_root.html > ../index.html
cat pre_root.html links.html post_root.html > ../links.html
cat pre_root.html documents.html post_root.html > ../Documents/index.html
cat pre_root.html events.html post_root.html > ../Events/index.html
cat pre_root.html announce.html post_root.html > ../Announcements/index.html

mkdir -p ../Events/2011/October/BAT
cat pre_root.html bat0811.html post_root.html > ../Events/2011/October/BAT/index.html
mkdir -p ../Events/2012/October/BAT
cat pre_root.html bat0812.html post_root.html > ../Events/2012/October/BAT/index.html
mkdir -p ../Events/2013/June/BAT
cat pre_root.html bat0613.html post_root.html > ../Events/2013/June/BAT/index.html
mkdir -p ../Documents/Requirements
cat pre_root.html batreqs.html post_root.html > ../Documents/Requirements/event_hosting.html

mkdir -p ../Events/2015/June/BAT
cat pre_root.html bat0615.html post_root.html > ../Events/2015/June/BAT/index.html

mkdir -p ../Events/2015/October/BAT
cat pre_root.html bat1015.html post_root.html > ../Events/2015/October/BAT/index.html

mkdir -p ../Events/2016/June/BAT
cat pre_root.html bat0616.html post_root.html > ../Events/2016/June/BAT/index.html

mkdir -p ../Events/2016/October/BAT
cat pre_root.html bat1016.html post_root.html > ../Events/2016/October/BAT/index.html

mkdir -p ../Events/2017/September/BAT
cat pre_root.html bat0917.html post_root.html > ../Events/2017/September/BAT/index.html

#
# The talks!
#

(cd cthon; ./build.sh)
(cd bats; ./build.sh)
(cd nasconf; ./build.sh)
