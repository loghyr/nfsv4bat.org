#
# Copyright (C) Tom Haynes - loghyr@gmail.com (2013)
#

# Detect Python: try python3 first, then python
PYTHON := $(shell which python3 2>/dev/null || which python 2>/dev/null)

all:
	$(PYTHON) build.py
	cp -r src/style/ .

clean:
	# Keep it simple: delete only the root-level generated HTML files
	rm -f index.html links.html
	rm -rf Documents/index.html Events/index.html Announcements/index.html
