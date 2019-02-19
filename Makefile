###########################################################
# Thesis Generator for Creative Informatics
# Author: Yuki Furuta <furushchev@jsk.imi.i.u-tokyo.ac.jp>
# Date: 2015/11/12
###########################################################

TARGET := elsarticle-template

OS := $(shell uname -s)
LATEXMK := $(shell command -v latexmk 2> /dev/null)
LATEXMK_OPTION := -time -recorder -rules
LATEXMK_EXEC := latexmk $(LATEXMK_OPTION)

.PHONY: all install preview clean wipe

all: install cls
	$(LATEXMK_EXEC) $(TARGET)

preview: install cls
	$(LATEXMK_EXEC) -pv $(TARGET)

cls: install
	cd elsarticle; latex elsarticle.ins; mv elsarticle.cls ..

clean: install
	$(LATEXMK_EXEC) -c

wipe: install clean
	$(LATEXMK_EXEC) -C
	git clean -X -f -i -e '.tex' -e '.tex.orig'

install:
ifndef LATEXMK
	@echo 'installing components...'
ifeq ($(OS), Linux)
	sudo apt install -y -qq texlive texlive-lang-cjk texlive-science texlive-fonts-recommended texlive-fonts-extra texlive-humanities xdvik-ja dvipsk-ja gv latexmk
endif
ifeq ($(OS), Darwin)
	brew tap caskroom/cask && brew cask install -v mactex && sudo tlmgr update --self --all
endif
endif
