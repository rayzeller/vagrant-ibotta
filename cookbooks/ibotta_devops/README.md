# Ibotta DevOps App Response

To run (on OSX):

Install Virtualbox
``brew cask install virtualbox``

Install Vagrant
``brew cask install vagrant``

Start up the box.

``vagrant up``

Tweak any attributes in ``cookbooks/ibotta_devops/attributes/default.rb``

For example, if you want to deploy staging instead of production, set ``default['environment'] = 'staging'``

I have also included the standalone install script at `install.sh`.  To double check that it works properly,
you can `cp` it to the `ops-dev-test` directory and run `bash install.sh` there.




