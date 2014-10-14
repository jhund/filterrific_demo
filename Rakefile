require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

require 'rake/testtask'
Rake::TestTask.new do |test|
  test.libs << 'spec'
  test.pattern = 'spec/**/*_spec.rb'
  test.verbose = true
end

require 'wwtd/tasks'
task default: 'wwtd:local'
