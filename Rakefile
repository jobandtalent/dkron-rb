begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  # no rspec available
end

task(:codegen) do
  sh('swagger-codegen', 'generate', '-i', 'https://dkron.io/swagger.yaml', '-l', 'ruby', '-o', '.', '-c', 'config.json')
end
