# Scrapevg Rake build script
# Author:: Reza Marvan Spagnolo
# License:: see LICENSE

require 'rake/testtask'
require 'rdoc/task'

desc "Run tests"
Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc 'Generate API documentation to doc/index.html'
Rake::RDocTask.new do |rd|
  rd.rdoc_dir = 'doc/'
  rd.main = 'README'
  rd.rdoc_files.include 'README', 'LICENSE', "lib/**/*\.rb", "test/**/*\.rb", 
                        "resources/**/*\.rb", "bin/scrapevg"

  rd.options << '--line-numbers'
  rd.options << '--all'
end

task :default => [:test, :rdoc]