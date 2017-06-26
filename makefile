src-files = $(wildcard src/*.js)
lib-files = $(patsubst src/%, lib/%, $(src-files))

all: $(lib-files)

lib/%.js: src/%.js lib
	node_modules/.bin/babel $< -o $@

lib:
	mkdir -p $@
