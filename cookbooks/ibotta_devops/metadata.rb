name             'ibotta_devops'
maintainer       'Rayz'
maintainer_email 'rayzeller@gmail.com'
license          'All rights reserved'
description      'Installs/Configures the ibotta app'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'mysql', '~> 8.0'
depends 'git', '~> 6.0'
depends 'ruby_rbenv', '~> 1.0'
