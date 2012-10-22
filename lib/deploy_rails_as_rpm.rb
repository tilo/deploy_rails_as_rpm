require "deploy_rails_as_rpm/version"

module DeployRailsAsRPM
  require "deploy_rails_as_rpm/railtie" if defined?(Rails)
end
