FROM composer


RUN composer global require friendsofphp/php-cs-fixer
RUN composer global require sebastian/phpcpd
RUN composer global require overtrue/phplint
RUN composer global require phploc/phploc
RUN composer global require phpmd/phpmd

#
