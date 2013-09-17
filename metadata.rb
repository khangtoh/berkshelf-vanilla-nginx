name             'berkshelf-vanilla-nginx'
maintainer       'Khang Toh'
maintainer_email 'khang.toh@gmail.com'
license          'All rights reserved'
description      'Installs/Configures berkshelf-vanilla-nginx'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends "build-essential"
depends "ohai" 
depends "nginx"
