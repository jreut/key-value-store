# frozen_string_literal: true
require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

# adapted from: https://github.com/mbj/mutant/blob/fe414f99a0ec06af03cc43154fe0140b4b43783b/Rakefile
task :mutant do
  arguments = %w(
    bundle exec mutant
    --include lib
    --require mutant
    --use rspec
    --zombie
  )

  arguments.concat(%w(-- Store*))

  raise 'Mutant task is not successful' unless Kernel.system(*arguments)
end

task default: [:spec, :mutant]
