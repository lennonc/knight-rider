begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |t|
    t.fail_on_error = false
  end

  task default: :spec
rescue LoadError
  puts "Cannot find RSpec rake task"
end
