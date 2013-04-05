#!/bin/sh
#
# Written by Perry Stoll
#
#  available on http://github.com/pstoll/diy-lyse-pdf
#
# This work is made available in the public domain.
# 
# simple script to generate a reasonable PDF of LYSE
# downloads site into the current directory and generates a PDF.
# requires htmldoc tool

wget -k --mirror http://learnyousomeerlang.com/

pushd learnyousomeerlang.com

files=`cat contents | perl -ne 'm/class="local chapter"/ && m/href="([^"#]+)"/ && print "$1\n"'`

# do a little cleanup on most pages:
# remove headers and footer nav from most content pages
#  but not the content file, it breaks book mode
for file in $files faq
do
  echo $file; 
   perl -0p -i.bak -e 's#<div id="wrapper">.*?</noscript></div>##gs; s#<ul class="navigation">.*?</ul>##gs;' $file
done

# create a nice PDF, with cross linking and all
htmldoc --outfile ../LYSE-book.pdf --book contents $files faq

popd
