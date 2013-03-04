diy-lyse-pdf
============

Do It Yourself Learn-You Some Erlang Portable Document Format, AKA D.L.P.

A simple shell script that downloads and creates a reasonable PDF of the Learn-You-Some-Erlang site, with clickable indexes and such.

You'll end up with a single PDF of the entire learnyousomeerlang.com site.

Requirements
===

You'll need htmldoc.

On Mac OSX, it's a simple

    brew install htmldoc

Usage
===

Assuming you are on a unix-y OS (linux or MacOSX or a reasonable
cygwin installation on Windows...), the following should do it:

    ./gen-lyse-pdf.sh

You'll have a PDF named LYSE-book.pdf in the current directory.

If something goes wrong, run it like this to see what's going on.:

    sh -x ./gen-lyse-pdf.sh

Commentary
====

So why did I do this? In the FAQ of the doc, the author suggests:

"Q: I want to read Learn You Some Erlang offline!

... For personal copies, I can recommend using wget to download your
own HTML copy of the site. More precisely, use ```wget --mirror -k
http://learnyousomeerlang.com```. You should then have a local copy of
the site that can be moved and whatnot."

So please, the copy of the PDF you create should be for personal
use. Please don't share it with others or sell it.

Also fwiw, I offered the script back to him, but he politely declined.
I think he's hoping his book earns some money. I hope he does, too. If
his book were a bit less expensive, I probably wouldn't have gone
through this effort. Or if there were a paypal way to contribute /
support him, I'd do that.



