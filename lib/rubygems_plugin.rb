require 'rubygems/command_manager'

if PLATFORM =~ /java/
  Gem::CommandManager.instance.register_command :isitjruby
else
  Gem::CommandManager.instance.register_command :isit19
end

Gem.pre_install do |i| # installer
  require 'isit19'

  next if i.instance_variable_defined? :@isit19_ran

  i.instance_variable_set :@isit19_ran, true

  spec = i.spec
  name = "#{spec.name} #{spec.version}"

  isit19 = nil
  begin
    klass = PLATFORM =~ /java/ ? IsItJruby : IsIt19
    isit19 = klass.new i.spec
    isit19.fetch!
  rescue Gem::RemoteFetcher::FetchError => e
    i.say "uh-oh! unable to fetch data for #{name}, maybe it doesn't exist yet?"
    i.say isit19.url
    next
  end

  i.say

  if isit19.are_there_comments?   
    if isit19.is_it_for_sure? then
      i.say "#{name} is #{isit19.percent} verified #{isit19.platform}"
    elsif ( comment = isit19.maybe_is_it? )
      working = comment['version']
      i.say "#{name} might work, #{isit19.percent working} say #{working} works on #{isit19.platform}"
    else
      comment = isit19.more_recent
      works = comment['works_for_me'] ? 'works' : 'fails'
      msg = "#{comment['name']} says #{comment['version']} #{works}"

      i.say "#{name} probably might not work, #{msg}"
    end
  else
    i.say "Nobody has verified #{name} works with #{isit19.platform}"
  end

  i.say "Update #{isit19.url} with your experiences!"
  i.say
end

