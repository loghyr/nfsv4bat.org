#
# Copyright (C) Tom Haynes - loghyr@gmail.com (2013)
#

CP=/bin/cp -f
RM=/bin/rm -f
CAT=/bin/cat
MKDIR=/bin/mkdir -p
SED=/usr/bin/sed
ECHO=/bin/echo

#
# Assumes DESTROOT exists
#
DESTROOT=../..

TALKS = \
	${DESTROOT}/Documents/ConnectAThon/index.html

YEARS = \
	${DESTROOT}/Documents/ConnectAThon/1995/index.html \
	${DESTROOT}/Documents/ConnectAThon/1996/index.html \
	${DESTROOT}/Documents/ConnectAThon/1997/index.html \
	${DESTROOT}/Documents/ConnectAThon/1998/index.html \
	${DESTROOT}/Documents/ConnectAThon/1999/index.html \
	${DESTROOT}/Documents/ConnectAThon/2000/index.html \
	${DESTROOT}/Documents/ConnectAThon/2001/index.html \
	${DESTROOT}/Documents/ConnectAThon/2002/index.html \
	${DESTROOT}/Documents/ConnectAThon/2003/index.html \
	${DESTROOT}/Documents/ConnectAThon/2004/index.html \
	${DESTROOT}/Documents/ConnectAThon/2005/index.html \
	${DESTROOT}/Documents/ConnectAThon/2006/index.html \
	${DESTROOT}/Documents/ConnectAThon/2007/index.html \
	${DESTROOT}/Documents/ConnectAThon/2008/index.html \
	${DESTROOT}/Documents/ConnectAThon/2009/index.html \
	${DESTROOT}/Documents/ConnectAThon/2010/index.html \
	${DESTROOT}/Documents/ConnectAThon/2011/index.html \
	${DESTROOT}/Documents/ConnectAThon/2012/index.html \
	${DESTROOT}/Documents/ConnectAThon/2013/index.html

all: ${TALKS} ${YEARS}

#
# Ugly, but works!
#
${DESTROOT}/Documents/ConnectAThon/%/index.html: %.html pre_dir1_talks.html post_dir1_talks.html
	${CAT} pre_dir1_talks.html $< post_dir1_talks.html | ${SED} "s/\(.*\)\(YEAR\)\(.*\)/\1 `${ECHO} "$<" | ${SED} "s/\(.*\).html/\1/"` \3/" > $@

${DESTROOT}/Documents/ConnectAThon/index.html: talks.html pre_root_talks.html post_root_talks.html
	${CAT} pre_root_talks.html $< post_root_talks.html > $@

clean:
	${RM} ${TALKS}
	${RM} ${YEARS}
