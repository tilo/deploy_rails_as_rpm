# Deploy Rails As RPM

Good News! If you are not serving your Rails App on Linux, then you don't need this Gem! :-)

`deploy_rails_as_rpm` is a Ruby Gem which helps you generate an RPM spec file for your Rails application, which you can use to build an RPM of your Rails app, which you can then deploy quickly to your production servers via your Linux server's native RPM installation mechanism, e.g. yum, apt-get, or rpm.

In our set-up we use CentOS 6.3, NginX 1.2.3, Unicorn 4.4.0, Rails 3.2.x and Ruby 1.9.3, and besides creating an RPM for your Rails App, we also include an easy way to roll your own RPM for the Ruby version you need in production.

## Advantages

Advantages of deploying a Rails app via RPM include:

 * use Linux's native and robust deployment mechanism to deploy your Rails app
 * RPMs already include pre- and post- installation scripts which we can leverage for automation around house-keeping tasks, and for restarting our Unicorns.
 * your Rails App RPM can require any necessary system libraries if your Gems need them
   (never again get stuck by a missing library.so file during deployment)
 * during deployment:
    * production servers don't need to slowly `bundle install` all your Gems and possibly compile native extensions all over again
    * production servers don't need to contain development tools or libraries (so hackers won't have it too easy)
    * production servers won't need RVM, or rbenv on them (those are great tools, but maybe not for production)
    * no performance impact on your production servers, because they don't have to run 'bundle install' anymore.
      (you want to keep your production servers serving your app to customers, and not waste CPU cycles on re-installing a bundle.)
 * you can quickly start additional production servers from a template and launch your Rails App in seconds
 * your deployment mechanism is more robust against RubyGems.org or GitHub outages.
 * your Git server doesn't become a bottleneck.
 * you will have fewer moving parts on your production servers.. fewer things to break.

If you are not convinced yet, you can read more about the motivation here (TBD).

## Any Down-side?

The only down-side I can think of is that you will need one additional (small) build server, which runs the identical OS as your production servers. On the build server you'll build your RPM(s), which includes running `bundle install` and compiling native extension, and also rolling your own Ruby 1.9.x RPM. This is the only server which has development tools on it, and it can be in-house behind your corporate firewall. You will only need to spin-up this build server in preparation of a release / deployment.

You should also have a (small) staging server which is an identical twin to your production servers, and which only needs to be spun-up for testing your final RPM deployment.

## 10,000ft Overview of our Set-Up

... to be continued shortly ...

## Creating your customized RPM spec
Creating your customized RPM spec is ridiculously easy:

    rake rpm:spec:create


you then have several options on how you want to deploy your RPM on your servers

## Building your Rails App RPM

After you set-up your build server as described under the (tbd)[prerequisites], you can create a new RPM for your Rails App, by running:

    rpmbuild -bb <RPM.spec>
    
This will generate the RPM for your Linux distribution under ./rpmbuild/RPMS/

If you should get any complains about libraries missing, you will need to add these to the `./config/rpm/dependencies.yaml` file,
re-generate the RPM-spec file and re-run the rpmbuild command, as described in the (tbd)[build procedures].

If in the future Bundler or RubyGems can provide a mechanism to query the system library dependencies for each Gem or bundle, 
we can eliminate this itterative process.


## Deploying your Rails App RPM

You have several choices on how to distribute your Rails App RPM file to your production servers, e.g. you could rsync or scp them, or fun your own yum repository.
Once the RPM is made available to your production server(s), simply run the native package update mechanism (apt-get, yum) to install it, or do a `rpm -Uhv rpm-file-name`.

## System Requirements




-------------------

## Gem Installation

Add this line to your application's Gemfile:

    gem 'deploy_rails_as_rpm'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deploy_rails_as_rpm

## Gem Usage

TODO: Write usage instructions here

## Contributing to this Gem

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
