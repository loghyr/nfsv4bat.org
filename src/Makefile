#
# Copyright (C) Tom Haynes - loghyr@gmail.com (2013)
# Modernized by Gemini CLI (2026)
#

CP = cp -f
RM = rm -f
CAT = cat
MKDIR = mkdir -p
SED = sed
DATE = date

# Destination root
DESTROOT = ..

# Source fragments
PRE = pre_root.html
POST = post_root.html

# Discover all .html source files (excluding fragments)
ALL_HTML = $(wildcard *.html)
CONTENT_HTML = $(filter-out $(PRE) $(POST), $(ALL_HTML))

# Map source files to their destinations in the root
ROOT_PAGES = $(DESTROOT)/index.html $(DESTROOT)/links.html
DOC_PAGES  = $(DESTROOT)/Documents/index.html $(DESTROOT)/Documents/Requirements/event_hosting.html
EVENT_LIST = $(DESTROOT)/Events/index.html
ANNOUNCE   = $(DESTROOT)/Announcements/index.html

# Style files
STYLE_SRC = $(wildcard style/*.css)
STYLE_DEST = $(patsubst style/%, $(DESTROOT)/style/%, $(STYLE_SRC))

# Event mapping (Hardcoded for now as it maps specific filenames to complex paths)
# We can automate this too if filenames follow a strict convention
EVENTS = \
	$(DESTROOT)/Events/2011/October/BAT/index.html \
	$(DESTROOT)/Events/2012/October/BAT/index.html \
	$(DESTROOT)/Events/2013/June/BAT/index.html \
	$(DESTROOT)/Events/2013/September/BAT/index.html \
	$(DESTROOT)/Events/2014/June/BAT/index.html \
	$(DESTROOT)/Events/2014/October/BAT/index.html \
	$(DESTROOT)/Events/2015/June/BAT/index.html \
	$(DESTROOT)/Events/2015/October/BAT/index.html \
	$(DESTROOT)/Events/2016/June/BAT/index.html \
	$(DESTROOT)/Events/2016/October/BAT/index.html \
	$(DESTROOT)/Events/2017/September/BAT/index.html \
	$(DESTROOT)/Events/2018/March/BAT/index.html \
	$(DESTROOT)/Events/2018/September/BAT/index.html \
	$(DESTROOT)/Events/2019/May/BAT/index.html \
	$(DESTROOT)/Events/2019/Oct/BAT/index.html \
	$(DESTROOT)/Events/2020/May/BAT/index.html \
	$(DESTROOT)/Events/2021/Feb/BAT/index.html \
	$(DESTROOT)/Events/2021/Oct/BAT/index.html \
	$(DESTROOT)/Events/2022/Apr/BAT/index.html \
	$(DESTROOT)/Events/2022/Oct/BAT/index.html \
	$(DESTROOT)/Events/2023/Apr/BAT/index.html \
	$(DESTROOT)/Events/2023/Oct/BAT/index.html \
	$(DESTROOT)/Events/2024/Apr/BAT/index.html \
	$(DESTROOT)/Events/2024/Oct/BAT/index.html \
	$(DESTROOT)/Events/2025/May/BAT/index.html \
	$(DESTROOT)/Events/2025/Oct/BAT/index.html

all: $(STYLE_DEST) $(ROOT_PAGES) $(DOC_PAGES) $(EVENT_LIST) $(ANNOUNCE) $(EVENTS)
	(cd cthon; $(MAKE))
	(cd bats; $(MAKE))
	(cd nasconf; $(MAKE))

# Helper to generate the timestamped header
header_with_date:
	@$(DATE) +"Last Built: %Y-%m-%d %H:%M:%S" > build_date.txt
	@$(SED) "/<!-- BUILD_DATE -->/r build_date.txt" $(PRE) > pre_with_date.html

# Generic rule for root pages
$(DESTROOT)/%.html: %.html header_with_date $(POST)
	$(CAT) pre_with_date.html $< $(POST) > $@

# Special mappings
$(DESTROOT)/Documents/index.html: documents.html header_with_date $(POST)
	$(MKDIR) $(DESTROOT)/Documents
	$(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/index.html: events.html header_with_date $(POST)
	$(MKDIR) $(DESTROOT)/Events
	$(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Announcements/index.html: announce.html header_with_date $(POST)
	$(MKDIR) $(DESTROOT)/Announcements
	$(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Documents/Requirements/event_hosting.html: batreqs.html header_with_date $(POST)
	$(MKDIR) $(DESTROOT)/Documents/Requirements
	$(CAT) pre_with_date.html $< $(POST) > $@

# Event pages (mapping batMMYY.html)
$(DESTROOT)/Events/2011/October/BAT/index.html: bat0811.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2012/October/BAT/index.html: bat0812.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2013/June/BAT/index.html: bat0613.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2013/September/BAT/index.html: bat0913.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2014/June/BAT/index.html: bat0614.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2014/October/BAT/index.html: bat1006.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2015/June/BAT/index.html: bat0615.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2015/October/BAT/index.html: bat1015.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2016/June/BAT/index.html: bat0616.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2016/October/BAT/index.html: bat1016.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2017/September/BAT/index.html: bat0917.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2018/March/BAT/index.html: bat0318.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2018/September/BAT/index.html: bat0918.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2019/May/BAT/index.html: bat0519.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2019/Oct/BAT/index.html: bat1019.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2020/May/BAT/index.html: bat0520.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2021/Feb/BAT/index.html: bat0221.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2021/Oct/BAT/index.html: bat1021.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2022/Apr/BAT/index.html: bat0422.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2022/Oct/BAT/index.html: bat1022.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2023/Apr/BAT/index.html: bat0423.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2023/Oct/BAT/index.html: bat1023.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2024/Apr/BAT/index.html: bat0424.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2024/Oct/BAT/index.html: bat1024.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2025/May/BAT/index.html: bat0525.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

$(DESTROOT)/Events/2025/Oct/BAT/index.html: bat1025.html header_with_date $(POST)
	$(MKDIR) $(@D); $(CAT) pre_with_date.html $< $(POST) > $@

# Style rules
$(DESTROOT)/style/%.css: style/%.css
	$(MKDIR) $(@D)
	$(CP) $< $@

clean:
	$(RM) $(STYLE_DEST) $(ROOT_PAGES) $(DOC_PAGES) $(EVENT_LIST) $(ANNOUNCE) $(EVENTS)
	$(RM) build_date.txt pre_with_date.html
	(cd cthon; $(MAKE) clean)
	(cd bats; $(MAKE) clean)
	(cd nasconf; $(MAKE) clean)
