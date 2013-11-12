#!/bin/bash

cd docs

if [ -d php-chunked-xhtml ]; then
    rm -rfv php-chunked-xhtml
fi

if [ -f php_manual_en.tar.gz ]; then
    rm -v php_manual_en.tar.gz
fi

wget -v http://uk1.php.net/distributions/manual/php_manual_en.tar.gz
tar xvf php_manual_en.tar.gz
rm -v php_manual_en.tar.gz
mv -v php-chunked-xhtml php
find php -not -name function.* -exec rm -v {} \;
cd php
rm -rfv images
rename -v "s/^function.//" *
cd ../..
