rubygems-isitjruby
==================

* http://isitjruby.com
* http://github.com/blaxter/rubygem-isit19/tree/master
* This gem is a fork of http://seattlerb.rubyforge.org/rubygems-isit19

DESCRIPTION
===========

Lets you figure out if your gems and gems you install might work on jruby.  Uses http://isitjruby.com as its datastore.  Be sure to update the website with
your experiences!


FEATURES/PROBLEMS
=================

* jruby

  * gem isitjruby for checking your installed gems (when using jruby)
  * gem install plugin that tells you if your installed gem works on jruby

USE
===
This could be a typical use::

    $ jgem install daemons

    daemons 1.0.10 probably might not work, blaxter says 1.0 fails
    Update http://isitjruby.com/daemons with your experiences!

    Successfully installed daemons-1.0.10
    1 gem installed
    blaxter@helicon:~/devel/rubygems-isitjruby$ (master) $ jrake
    blaxter@helicon:~/devel/rubygems-isitjruby$ (master) $ jgem isitjruby daemons
    daemons 1.0.10:    http://isitjruby.com/daemons
        blaxter says 1.0 fails on GNU/Linux
            Daemons use fork, jruby doesn't support fork, so it doesn't work and
            never will

Do not forget to add you comments to http://isitjruby.org ;)

INSTALL
=======

* From github: `sudo gem install blaxter-rubygem-isitjruby`
* Or you could also install from gemcutter::

      sudo sources add http://gemcutter.com && sudo gem install rubygems-isitjruby


LICENSE
=======

(The MIT License)

Copyright (c) 2009 Eric Hodel, blaxter

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
