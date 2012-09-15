
parser: lib/parser.js

lib/parser.js: src/parser.jison
		./node_modules/.bin/jison $< -o $@

test:
		./node_modules/.bin/mocha tests/test.js

lint:
		./node_modules/.bin/nodelint --config ./nodelint.conf ./package.json ./lib/proto2json.js
		./node_modules/.bin/nodelint --config ./nodelint.conf ./tests

.PHONY: parser test lint
