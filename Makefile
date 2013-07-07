RUBY := /usr/bin/ruby
BUNDLER := $(shell which bundle 2>&1 || echo vendor/ruby/bin/bundle)

all: $(BUNDLER)
	@$(BUNDLER) --quiet --local --standalone --path vendor/bundle
	@mkdir -p bin
	@ln -nfs "$(shell bundle show alox)/bin/alox"  bin/

vendor/ruby/bin/bundle: vendor/ruby/bin/gem
	@bin/gem install bundler -v 1.3.5

vendor/ruby/bin/gem:
	@cd rubygems-1.8.25 && env GEM_PATH= GEM_HOME=$(PWD)/vendor/ruby $(RUBY) setup.rb --prefix=../vendor/ruby

clean:
	@rm -rf vendor/ruby
