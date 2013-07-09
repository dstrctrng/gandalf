RUBY := /usr/bin/ruby
BUNDLER := $(shell which bundle 2>&1 || echo no_bundler)

all: $(BUNDLER)
	@$(BUNDLER) --local --standalone --path vendor/bundle
	@mkdir -vp bin
	@ln -vnfs "$(shell bundle show alox)/bin/alox" bin

no_bundler:
	@echo need bundler, try running gem install bundler
	@false
