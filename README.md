# Introduction

I have for many years been running the same array of commands each time I build a new server/workstation. This is typical of any admin/developer who after installation of their new shiny OS goes to work installing their respective toolset. When I discovered babushka I saw a tool that had the potential to alleviate some of this repetition, and hopefully also act as a reminder for all the junk i use in my daily work.

This document was written to describe how I use this tool, and illustrate how it may help others.

# New System Setup

I typically for my own website and development environment use Ubuntu. For servers I stick to LTS releases and desktop I use the latest release. 

## Ubuntu 10.04 Server

Installation process for this OS is pretty simple, I go with the defaults and install nothing extra. This gives me a good clean base to get up and running with.

Once the installation is complete the first thing I do is download and install babushka, note I do this as the unprivileged user we added during installation.

    $ bash -c "`wget -O - babushka.me/up`"

Now that we are up and running I need to add my babushka-deps which are hosted on http://github.com/.

    $ babushka source -a wolfeidau git://github.com/wolfeidau/babushka-deps.git

To have a look at what has been imported from this source we list all deps, those listed with a prefix matching the one we supplied were found in our source.

    $ babushka list

Based on the deps which ben_h has I have assembled a basesystem dep just to bootstrap servers with a few basic tools. 

    $ babushka 'wolfeidau:systembase'

Then to illustrate a simple source package I have created a dep which downloads and builds a recent erlang from source code.

    $ babushka 'wolfeidau:erlang.src'

As I am currently messing around with the riak database, the following command will download and install the deb package for this software. Note this package includes another copy of the erlang runtime which in my view is fine for testing.

    $ babushka 'wolfeidau:riak' 
