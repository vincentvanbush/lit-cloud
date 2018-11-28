# frozen_string_literal: true

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib/lit/cloud/providers'
  t.libs << 'test'
  t.test_files = FileList['test/**/*_spec.rb', 'test/**/*_test.rb']
  t.verbose = true
end

task default: :test
