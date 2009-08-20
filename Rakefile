# -*- ruby -*-

# force github to build a "jruby gem"
FOR_JRUBY = 1# PLATFORM =~ /java/

require 'rubygems'
require 'hoe'

Hoe.plugin :seattlerb

Hoe.spec 'rubygems-isit19' do
  developer 'Eric Hodel', 'drbrain@segment7.net'

  self.rubyforge_name = 'seattlerb'
  if FOR_JRUBY
    extra_deps << ['json-jruby', '~> 1.1.7']
  else
    extra_deps << ['json', '~> 1.1']
  end
end

# vim: syntax=Ruby
