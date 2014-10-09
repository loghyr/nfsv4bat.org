#
# Copyright (C) Tom Haynes - tdh@excfb.com (2013)
#

CP=/bin/cp -f
RM=/bin/rm -f
CAT=/bin/cat
MKDIR=/bin/mkdir -p
SED=/bin/sed
ECHO=/bin/echo

#
# Assumes DESTROOT exists
#
DESTROOT=../..

TALKS = \
	${DESTROOT}/Documents/nasconf/index.html

YEARS = \
	${DESTROOT}/Documents/nasconf/2000/index.html \
	${DESTROOT}/Documents/nasconf/2001/index.html \
	${DESTROOT}/Documents/nasconf/2002/index.html \
	${DESTROOT}/Documents/nasconf/2003/index.html \
	${DESTROOT}/Documents/nasconf/2004/index.html \
	${DESTROOT}/Documents/nasconf/2005/index.html

all: ${TALKS} ${YEARS}

#
# Ugly, but works!
#
${DESTROOT}/Documents/nasconf/%/index.html: %.html pre_dir1_talks.html post_dir1_talks.html
	${CAT} pre_dir1_talks.html $< post_dir1_talks.html | ${SED} "s/\(.*\)\(YEAR\)\(.*\)/\1 `${ECHO} "$<" | ${SED} "s/\(.*\).html/\1/"` \3/" > $@

${DESTROOT}/Documents/nasconf/index.html: talks.html pre_root_talks.html post_root_talks.html
	${CAT} pre_root_talks.html $< post_root_talks.html > $@

clean:
	${RM} ${TALKS}
	${RM} ${YEARS}
