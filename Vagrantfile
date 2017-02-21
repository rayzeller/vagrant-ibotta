Vagrant::Config.run do |config|

  config.vm.define :web do |web|
    web.vm.box = "precise64"
    web.vm.box_url = "http://files.vagrantup.com/precise64.box"
    web.vm.network :hostonly, "192.168.100.10"
    web.vm.host_name = "web.local"

    web.vm.provision :chef_solo do |chef|
      chef.add_recipe "git"
      chef.add_recipe "ruby_rbenv::system_install"
      chef.add_recipe "ruby_build"
      chef.add_recipe "ibotta_devops"
    end
  end

end