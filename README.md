# Deploy Rails As RPM

`deploy_rails_as_rpm` is a Ruby Gem which helps you generate an RPM spec file for your Rails application, which you can use to build an RPM of your Rails app, which you can then deploy quickly to your production servers via your Linux server's native RPM installation mechanism, e.g. yum, apt-get, or rpm.

In our set-up we use NginX, Unicorn, Rails 3.2.x and Ruby 1.9.3, and we include an easy way to roll your own Ruby RPM.

Advantages of deploying a Rails app via RPM include:

 * use Linux's native and robust deployment mechanism to deploy your Rails app
 * your Rails App RPM can require any necessary system libraries if your Gems need them
   (never again get stuck by a missing library.so file during deployment)
 * during deployment:
    * production servers don't need to slowly `bundle install` all your Gems and possibly compile native extensions all over again
    * production servers don't need to contain development tools or libraries (so hackers won't have it too easy)
    * production servers won't need RVM, or rbenv on them (those are great tools, but maybe not for production)
    * no performance impact on your production servers, because they don't have to run 'bundle install' anymore.
 * you can quickly start additional production servers from a template and launch your Rails App in seconds
 * your deployment mechanism is more robust against RubyGems.org or GitHub outages.


## Motivation

## 10,000ft Overview

... to be continued shortly ...

## How To



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
