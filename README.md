diy-lyse-pdf
============

Do It Yourself Learn-You Some Erlang Portable Document Format, AKA D.L.P.

A simple shell script that downloads and creates a reasonable PDF of the Learn-You-Some-Erlang site, with clickable indexes and such.

Requirements
===

You'll need htmldoc.

On Mac OSX, it's a simple

    brew install htmldoc

Usage
===

Assuming you are on a unix-y OS (linux or MacOSX or a reasonable cygwin installation on Windows...), the following should do it:

    ./gen-lyse-pdf.sh

You'll have a PDF named LYSE-book.pdf in the current directory.

If something goes wrong, run it like this to see what's going on.:

    sh -x ./gen-lyse-pdf.sh

