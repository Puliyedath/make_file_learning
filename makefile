#This script will only use shell commands and concatenate the output
#to different bundles
#	@cp $@ $(patsubst js_files, public, $@)

name = $(wildcard *.*)
public := public

tsFiles := $(wildcard js_files/*.ts)
jsFiles := $(patsubst %.ts, %.js, $(tsFiles))

all: $(jsFiles)

%.js: %.ts
	@echo "hareesh" $@

$(public):
	mkdir $(public)

#learning order only pre-requisite
printAllFiles:
	echo ${name}


