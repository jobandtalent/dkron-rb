require "bundler/gem_tasks"
task :default => :spec

task(:codegen) do
  sh('swagger-codegen', 'generate', '-i', 'http://dkron.io/swagger.yaml', '-l', 'ruby', '-o', '.', '-c', 'config.json')
end
