Gem::Specification.new do |spec|
  spec.name          = 'rsnchat'
  spec.version       = '4.0.0'
  spec.summary       = 'The Ultimate AI Powered Package'
  spec.description   = 'A package for interacting with GPT4-based chat services, OpenChat, Bard, Gemini, LlaMa, and Mixtral'
  spec.authors       = ['rnilaweera']
  spec.email         = ['stacxdev@gmail.com']
  spec.license       = 'MIT'
  spec.homepage      = 'https://github.com/RsnLabs/rsnchat-gem'
  spec.files         = Dir.glob("{lib,bin}/**/*") + ['rsnchat_gem.gemspec']
  spec.required_ruby_version = '>= 3.0.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.executables   = ['cli.rb']
end