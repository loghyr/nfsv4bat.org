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
	${DESTROOT}/Documents/BakeAThon/index.html

#
# Yeah, this fails if we do multiple talks in a year!
#
YEARS = \
	${DESTROOT}/Documents/BakeAThon/2012/index.html \
	${DESTROOT}/Documents/BakeAThon/2014/index.html \
	${DESTROOT}/Documents/BakeAThon/2017/index.html \
	${DESTROOT}/Documents/BakeAThon/2018/index.html

all: ${TALKS} ${YEARS}

#
# Ugly, but works!
#
${DESTROOT}/Documents/BakeAThon/%/index.html: %.html pre_dir1_talks.html post_dir1_talks.html
	${CAT} pre_dir1_talks.html $< post_dir1_talks.html | ${SED} "s/\(.*\)\(YEAR\)\(.*\)/\1 `${ECHO} "$<" | ${SED} "s/\(.*\).html/\1/"` \3/" > $@

${DESTROOT}/Documents/BakeAThon/index.html: talks.html pre_root_talks.html post_root_talks.html
	${CAT} pre_root_talks.html $< post_root_talks.html > $@

clean:
	${RM} ${TALKS}
	${RM} ${YEARS}
