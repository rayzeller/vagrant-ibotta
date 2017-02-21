# Ibotta DevOps App Response
Please clone this repo with

```bash
git clone --recursive https://github.com/rayzeller/vagrant-ibotta
````
because it contains git submodules.


To run (on OSX):

Install Virtualbox
```bash
brew cask install virtualbox
```

Install Vagrant
```bash
brew cask install vagrant
```

Start up the box.

```bash
vagrant up
```

Tweak any attributes in ``cookbooks/ibotta_devops/attributes/default.rb``

For example, if you want to deploy staging instead of production, set ``default['environment'] = 'staging'``

I have also included the standalone install script at `install.sh`.  To double check that it works properly,
you can `cp` it to the `ops-dev-test` directory and run `bash install.sh` there.




