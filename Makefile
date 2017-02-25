default: dependencies

apply:
	puppet apply setup.pp --modulepath=./modules

clean:
	rm -rf ./modules

dependencies:
	which gem && which r10k

install:
	r10k puppetfile install

.PHONY: apply clean dependencies install
