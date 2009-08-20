require 'rubygems/command'
require 'rubygems/version_option'
require 'rubygems/text'
require 'isit19'

class Gem::Commands::Isit19Command < Gem::Command

  include Gem::VersionOption
  include Gem::Text

  COMMAND     = 'isit19'
  DESCRIPTION = 'Check isitruby19.com for ruby 1.9 compatibility'

  def initialize(command=COMMAND, description=DESCRIPTION)
    super command, description, :version => Gem::Requirement.default

    add_version_option
  end

  def arguments # :nodoc:
    'GEMNAME       name of an installed gem to check for 1.9 compatibility'
  end

  def defaults_str # :nodoc:
    "--version='>= 0'"
  end

  def usage # :nodoc:
    "#{program_name} GEMNAME [options]"
  end

  def execute
    name = get_one_gem_name

    dep = Gem::Dependency.new name, options[:version]
    specs = Gem.source_index.search dep

    if specs.empty? then
      alert_error "No installed gem #{dep}"
      terminate_interaction 1
    end

    spec = specs.last

    isit19 = new_instance_isit(spec)
    isit19.fetch!

    comments = isit19.comments

    say "#{spec.name} #{spec.version}:    #{isit19.url}"

    say '    No reports!' if comments.empty?

    last_seen_version = nil

    comments.each_with_index do |comment, i|
      break if i > 0 and comment['version'] != last_seen_version

      works = comment['works_for_me'] ? 'works' : 'fails'
      platform = comment['platform'].values.join ' ' if comment['platform']

      msg = "#{comment['name']} says #{comment['version']} #{works}"
      msg << " on #{platform}" if platform

      say "    #{msg}"
      say format_text(comment['body'], 68, 8) unless comment['body'].empty?
      say

      last_seen_version = comment['version']
    end
  end

  protected

    def new_instance_isit(spec)
      IsIt19.new spec
    end
end

