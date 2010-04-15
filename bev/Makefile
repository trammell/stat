
   SCHEME ?= guile

usage:
	@echo "usage: make [test]"

# the "-L lib" option works with Guile; other schemes maybe?
test:
	prove -e "$(SCHEME) -L lib" t/



