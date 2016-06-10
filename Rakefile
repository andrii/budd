require 'rake/testtask'
require 'cucumber/rake/task'

Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.libs.push 'spec'
end

Cucumber::Rake::Task.new

task default: %i(test cucumber)
