= rubygems-isit19

* http://isitruby19.com
* http://seattlerb.rubyforge.org/rubygems-isit19

* This fork: http://github.com/blaxter/rubygem-isit19/tree/master

== DESCRIPTION:

Lets you figure out if your gems and gems you install might work on 1.9.  Uses
http://isitruby19.com as its datastore.  Be sure to update the website with
your experiences!

If you are working with jruby, it uses http://isitjruby.com. For now if you
create the gem using jruby, it will be this way, with a `gem isitjruby` command.
But if you generate the gem with normal ruby interpreter you'll get the usual
`gem isit19` command


== FEATURES/PROBLEMS:

* ruby
  * gem isit19 for checking your installed gems
  * gem install plugin that tells you if your installed gem works on 1.9
* jruby
  * gem isitjruby for checking your installed gems (when using jruby)
  * gem install plugin that tells you if your installed gem works on jruby

== SYNOPSIS:

  $ gem install ZenTest
  
  ZenTest 4.1.4 might work, 100% say 4.1.3 works on 1.9
  Update http://isitruby19.com/ZenTest with your experiences!
  
  Successfully installed ZenTest-4.1.4
  1 gem installed

== INSTALL:

* sudo gem install rubygems-isit19
or from this fork
* sudo gem install blaxter-rubygem-isit19

== LICENSE:

(The MIT License)

Copyright (c) 2009 Eric Hodel

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
