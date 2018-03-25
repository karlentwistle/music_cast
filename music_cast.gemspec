lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "music_cast/version"

Gem::Specification.new do |spec|
  spec.name          = 'music_cast'
  spec.version       = MusicCast::VERSION
  spec.authors       = ['Karl Entwistle']
  spec.email         = ['karl@entwistle.com']

  spec.summary       = 'Yamaha MusicCast Control System'
  spec.description   = 'Yamaha MusicCast HTTP simplified API for Control Systems'
  spec.homepage      = 'https://github.com/karlentwistle/music_cast'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 0.14.0'
  spec.add_dependency 'vcr', '~> 4.0'
  spec.add_dependency 'webmock', '~> 3.3'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'byebug', '~> 10.0', '>= 10.0.1'
end
