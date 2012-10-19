# Deploy Rails As RPM

`deploy_rails_as_rpm` is a Ruby Gem which helps you generate an RPM spec file for your Rails application, which you can use to build an RPM of your Rails app, which you can then deploy to production servers via your Linux server's native RPM installation mechanism, e.g. yum, apt-get, or rpm.

Advantages of deploying a Rails app via RPM include:

 * use Linux's native and robust deployment mechanism to deploy your Rails app
 * your Rails App RPM can require any necessary system libraries if your Gems need them
 * during deployment your production servers:
    * don't need to build and possibly compile all your Gems again
    * don't need to contain development tools and libraries
 * no performance impact on your production servers, because they don't have to run 'bundle install'.
 * you can quickly start additional production servers from a template and launch your Rails App in seconds
 * your deployment mechanism doesn't rely on RubyGems.org being up.

## 10,000ft Overview

... to be continued shortly ...



## Installation

Add this line to your application's Gemfile:

    gem 'deploy_rails_as_rpm'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deploy_rails_as_rpm

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
