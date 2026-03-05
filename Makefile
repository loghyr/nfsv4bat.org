#
# Copyright (C) Tom Haynes - loghyr@gmail.com (2013)
#

all:
	python build.py
	cp -r src/style/ .

clean:
	# Keep it simple: delete only the root-level generated HTML files
	rm -f index.html links.html
	rm -rf Documents/index.html Events/index.html Announcements/index.html
