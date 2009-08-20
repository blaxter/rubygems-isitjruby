require 'rubygems/command'
require 'rubygems/version_option'
require 'rubygems/text'
require 'rubygems/commands/isit19_command.rb'

class Gem::Commands::IsitjrubyCommand < Gem::Commands::Isit19Command

  COMMAND     = 'isitjruby'
  DESCRIPTION = 'Check isitjruby.com for jruby compatibility'

  def initialize
    super COMMAND, DESCRIPTION
  end

  protected

    def new_instance_isit(spec)
      IsItJruby.new spec
    end
end

