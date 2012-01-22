# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "catshow-player/version"

Gem::Specification.new do |s|
  s.name        = "catshow-player"
  s.version     = Catshow::Player::VERSION
  s.authors     = ["Spike Grobstein"]
  s.email       = ["spikegrobstein@mac.com"]
  s.homepage    = ""
  s.summary     = "Video player component of Catshow"
  s.description = "Play video and interact with video players for Catshow."

  s.rubyforge_project = "catshow-player"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
