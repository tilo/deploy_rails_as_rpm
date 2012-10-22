require 'deploy_rails_as_rpm'
require 'rails'

module DeployRailsAsRPM
  class Railtie < Rails::Railtie
    railtie_name :deploy_rails_as_rpm

    rake_tasks do
      load "tasks/deploy_rails_as_rpm.rake"
    end
  end
end
