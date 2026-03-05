#
# Copyright (C) Tom Haynes - loghyr@gmail.com (2013)
#

CP=cp -f
RM=rm -f
CAT=cat
MKDIR=mkdir -p
SED=sed
ECHO=echo

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
	${DESTROOT}/Documents/BakeAThon/2018/index.html \
	${DESTROOT}/Documents/BakeAThon/2021/index.html \
	${DESTROOT}/Documents/BakeAThon/2023/index.html

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
