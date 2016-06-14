Gem::Specification.new do |s|
  s.name     = 'budd'
  s.version  = '0.0.1'
  s.authors  = ['Andrii Ponomarov']
  s.email    = 'andrii.ponomarov@gmail.com'
  s.summary  = 'Helps fix Ruby Core errors in failing specs.'
  s.homepage = 'https://github.com/andrii/budd'
  s.license  = 'MIT'
  s.files    = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(features|spec)/}) }

  s.required_ruby_version = '>= 2.0.0'

  s.add_development_dependency 'aruba', '~> 0.14.1'
  s.add_development_dependency 'minitest', '~> 5.9'
  s.add_development_dependency 'rspec-core', '~> 3.4', '>= 3.4.4'
  s.add_development_dependency 'rake', '~> 11.1', '>= 11.1.2'
end
