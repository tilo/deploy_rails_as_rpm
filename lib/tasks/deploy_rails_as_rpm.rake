require 'yaml'
require 'erb'

namespace :rpm do
  namespace :spec do
    desc 'Generate RPM Spec file for this Rails Application'
    task :generate do
      puts "we are in #{Dir.pwd} - how do we get to the App dir and the Gem's templates dir?"

      opts = YAML.parse_file('./config/rpm/rpm_config.yml').to_ruby

      if File.exists?('./config/rpm/template.spec.erb')
         template_file = './config/rpm/template.spec.erb' 
      else
         template_file = './templates/default.spec.erb'
      end
      template = ERB.new(File.read(template_file))

      filename = opts['app']['name'] + '-' + opts['app']['version'] + '-' + opts['rpm']['revision'].to_s + '.spec'
      File.open("/tmp/#{filename}", 'w') do |f|
        f.write( template.result(binding) )
      end

    end
  end
end
