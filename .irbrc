require 'rubygems'
require 'irb/completion'
require 'irb/ext/save-history'
["wirble", "interactive_editor", "hirb"].each do |gem|
  %x{gem install #{gem} --no-ri --no-rdoc} unless Gem.available?(gem)
end

Gem.refresh
require 'wirble'
require 'interactive_editor'

Wirble.init
Wirble.colorize

colors = Wirble::Colorize.colors.merge({
 :object_class => :purple,
 :symbol => :purple,
 :symbol_prefix => :purple
})
Wirble::Colorize.colors = colors
require 'hirb'
Hirb.enable

Hirb::Formatter.dynamic_config['ActiveRecord::Base']
