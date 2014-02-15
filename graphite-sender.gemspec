# encoding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name        = "graphite_sender"
  gem.version     = "1.0.0"
  gem.authors     = ["Israel Calvete"]
  gem.email       = ["icalvete@gmail.com"]
  gem.summary     = %q{Sends measurements to Graphite via TCP|UDP}
  gem.description = %q{Sends measurements to Graphite via TCP|UDP}
  gem.files       = ["lib/graphite_sender.rb"]
  gem.homepage    = "http://github.com/icalvete/graphite-sender"
  gem.license     = "MIT"
end
