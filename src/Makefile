#
# Copyright (C) Tom Haynes - tdh@excfb.com (2013)
#

CP=/bin/cp -f
RM=/bin/rm -f
CAT=/bin/cat
MKDIR=/bin/mkdir -p

#
# Assumes DESTROOT exists
#
DESTROOT=..

STYLE = \
	${DESTROOT}/style/simple.css \
	${DESTROOT}/style/style.css

PAGES = \
	${DESTROOT}/index.html \
	${DESTROOT}/links.html \
	${DESTROOT}/Documents/index.html \
	${DESTROOT}/Events/index.html \
	${DESTROOT}/Announcements/index.html

EVENTS = \
	${DESTROOT}/Events/2011/October/BAT/index.html \
	${DESTROOT}/Events/2012/October/BAT/index.html \
	${DESTROOT}/Events/2013/June/BAT/index.html \
	${DESTROOT}/Events/2013/September/BAT/index.html \
	${DESTROOT}/Events/2014/June/BAT/index.html \
	${DESTROOT}/Events/2014/October/BAT/index.html \
	${DESTROOT}/Events/2015/June/BAT/index.html \
	${DESTROOT}/Events/2015/October/BAT/index.html \
	${DESTROOT}/Events/2016/June/BAT/index.html \
	${DESTROOT}/Events/2016/October/BAT/index.html \
	${DESTROOT}/Events/2017/September/BAT/index.html \
	${DESTROOT}/Events/2018/March/BAT/index.html \
	${DESTROOT}/Events/2018/September/BAT/index.html \
	${DESTROOT}/Events/2019/May/BAT/index.html \
	${DESTROOT}/Events/2019/Oct/BAT/index.html \
	${DESTROOT}/Events/2020/May/BAT/index.html \
	${DESTROOT}/Events/2021/Feb/BAT/index.html \
	${DESTROOT}/Events/2021/Oct/BAT/index.html \
	${DESTROOT}/Events/2022/Apr/BAT/index.html \
	${DESTROOT}/Documents/Requirements/event_hosting.html

all: ${STYLE} ${PAGES} ${EVENTS}
	(cd cthon; make)
	(cd bats; make)
	(cd nasconf; make)

${DESTROOT}/style/%.css: style/%.css
	${MKDIR} ${DESTROOT}/style
	${CP} $< $@

${DESTROOT}/index.html: index.html pre_root.html post_root.html
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/links.html: links.html pre_root.html post_root.html
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Documents/index.html: documents.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Documents
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/index.html: events.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Announcements/index.html: announce.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Announcements
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2011/October/BAT/index.html: bat0811.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2011/October/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2012/October/BAT/index.html: bat0812.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2012/October/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2013/June/BAT/index.html: bat0613.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2013/June/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2013/September/BAT/index.html: bat0913.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2013/September/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2014/June/BAT/index.html: bat0614.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2014/June/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2014/October/BAT/index.html: bat1006.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2014/October/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2015/June/BAT/index.html: bat0615.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2015/June/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2015/October/BAT/index.html: bat1015.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2015/October/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2016/June/BAT/index.html: bat0616.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2016/June/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2016/October/BAT/index.html: bat1016.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2016/October/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2017/September/BAT/index.html: bat0917.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2017/September/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2018/March/BAT/index.html: bat0318.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2018/March/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2018/September/BAT/index.html: bat0918.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2018/September/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2019/May/BAT/index.html: bat0519.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2019/May/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2019/Oct/BAT/index.html: bat1019.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2019/Oct/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2020/May/BAT/index.html: bat0520.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2020/May/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2021/Feb/BAT/index.html: bat0221.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2021/Feb/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2021/Oct/BAT/index.html: bat1021.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2021/Oct/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Events/2022/Apr/BAT/index.html: bat0422.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Events/2022/Apr/BAT
	${CAT} pre_root.html $< post_root.html > $@

${DESTROOT}/Documents/Requirements/event_hosting.html: batreqs.html pre_root.html post_root.html
	${MKDIR} ${DESTROOT}/Documents/Requirements
	${CAT} pre_root.html $< post_root.html > $@

clean:
	${RM} ${STYLE}
	${RM} ${PAGES}
	${RM} ${EVENTS}
	(cd cthon; make clean)
	(cd bats; make clean)
	(cd nasconf; make clean)
