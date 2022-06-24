.PHONY: test

test:
	git clone https://github.com/M2mobi/lunr.locator.git Lunr.Locator-0.7
	git clone https://github.com/M2mobi/lunr.config.git Lunr.Config-0.7
	phpstan analyse index.php -a autoload.php

.PHONY: install_ext
install_ext:
	git clone "https://github.com/pprkut/autoload-psr.git" autoloader
	cd autoloader
	phpize
	./configure
	make
	make install
	cd ..

.PHONY: clean
clean:
	rm -rf Lunr.Locator-0.7 Lunr.Config-0.7 autoloader