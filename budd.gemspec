Gem::Specification.new do |s|
  s.name    = 'budd'
  s.version = '0.0.1'
  s.summary = 'Explains Ruby errors in failing specs.'
  s.authors = ['Andrii Ponomarov']

  s.add_development_dependency 'aruba', '~> 0.14.1'
  s.add_development_dependency 'minitest', '~> 5.9'
  s.add_development_dependency 'rake', '~> 11.1', '>= 11.1.2'
end
