name              'build-essential'
maintainer        'Chef Software, Inc.'
maintainer_email  'cookbooks@chef.io'
license           'Apache 2.0'
description       'Installs C compiler / build tools'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '8.0.0'
recipe            'build-essential', 'Installs packages required for compiling C software from source.'

supports 'amazon'
supports 'centos'
supports 'debian'
supports 'fedora'
supports 'freebsd'
supports 'mac_os_x', '>= 10.9.0'
supports 'mac_os_x_server', '>= 10.9.0'
supports 'opensuse'
supports 'opensuseleap'
supports 'oracle'
supports 'redhat'
supports 'scientific'
supports 'smartos'
supports 'solaris'
supports 'suse'
supports 'ubuntu'
supports 'windows'
supports 'zlinux'

##depends 'seven_zip' <<---windows
##depends 'mingw', '>= 1.1'  <<---windows

source_url 'https://github.com/chef-cookbooks/build-essential'
issues_url 'https://github.com/chef-cookbooks/build-essential/issues'
chef_version '>= 12.5'
