# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "require2/version"

Gem::Specification.new do |s|
  s.name        = "require2"
  s.version     = Require2::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Satoshi GUNJI"]
  s.email       = ["gunjisatoshi@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Multiple arguments require}
  s.description = %q{Replace Kernel#require method which allow multiple arguments.}

  s.rubyforge_project = "require2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
