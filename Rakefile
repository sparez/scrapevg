# Scrapevg Rake build script
# Author:: Reza Marvan Spagnolo
# License:: see LICENSE

require 'rake/testtask'
require 'rdoc/task'

# unit tests
Rake::TestTask.new do |t|
  t.pattern = 'test/**/tc_*.rb'
end

# rdoc
Rake::RDocTask.new do |rd|
  rd.rdoc_dir = 'doc/'
  rd.main = 'README'
  rd.rdoc_files.include 'README', 'LICENSE', "lib/**/*\.rb", "test/**/*\.rb", 
                        "resources/**/*\.rb", "bin/scrapevg"

  rd.options << '--line-numbers'
  rd.options << '--all'
end

task :default => [:test]