require "bundler/gem_tasks"
task :default => :spec

task(:codegen) do
  sh('swagger-codegen', 'generate', '-i', '../../victorcoder/dkron/static/swagger.yaml', '-l', 'ruby', '-o', '.', '-c', 'config.json')
end
