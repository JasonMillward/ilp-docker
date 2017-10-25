FROM composer
#ENTRYPOINT ["/bin/bash"]

RUN wget http://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -O php-cs-fixer
RUN chmod +x php-cs-fixer
RUN mv php-cs-fixer /usr/local/bin/php-cs-fixer

RUN wget https://phar.phpunit.de/phpcpd.phar
RUN chmod +x phpcpd.phar
RUN mv phpcpd.phar /usr/local/bin/phpcpd

RUN wget https://phar.phpunit.de/phploc.phar
RUN chmod +x phploc.phar
RUN mv phploc.phar /usr/local/bin/phploc

RUN wget -c http://static.phpmd.org/php/latest/phpmd.phar
RUN chmod +x phpmd.phar
RUN mv phpmd.phar /usr/local/bin/phpmd

RUN wget http://get.sensiolabs.org/security-checker.phar
RUN chmod +x security-checker.phar 
RUN mv security-checker.phar /usr/local/bin/security-checker

RUN sed -i  's/\/bin\/ash/\/bin\/bash/' /etc/passwd
