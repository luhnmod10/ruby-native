require "rake/extensiontask"
require "bundler/gem_tasks"
require "rake/testtask"

task :clean do
  FileUtils.rm_rf("lib")
  FileUtils.rm_rf("pkg")
  FileUtils.rm_rf("tmp")
end

spec = Gem::Specification.load("luhnmod10-native.gemspec")
Rake::ExtensionTask.new("luhnmod10/native", spec)

Rake::TestTask.new(:test => :compile) do |t|
  t.test_files = FileList["tests/*_test.rb"]
end

Rake::TestTask.new(:benchmark => :compile) do |t|
  t.test_files = FileList["tests/*_benchmark.rb"]
end

task :default => [:test, :benchmark]