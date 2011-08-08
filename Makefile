# There's actually nothing to build, but I hate deploying shit by hand

install_files=odt2txt.py oodump.sh
install_dir=${HOME}/bin

all: run_tests install

clean:
	rm -f *~ *.bak *.orig *.pyc

test:
	python test/dependencies.py
	test/test_package.py

install: test
	mkdir -p $(install_dir)
	install -m744 $(install_files) $(install_dir)
	@echo "You should make sure that $(install_dir) is in your PATH"
