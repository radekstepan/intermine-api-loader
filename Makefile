build:
	@./node_modules/.bin/coffee build.coffee

test: build
	./node_modules/.bin/mocha --compilers coffee:coffee-script --reporter spec --ui exports --globals globalls --bail

.PHONY: test