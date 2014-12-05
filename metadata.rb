name              'vagrant-ruby-starter-kit'
maintainer        'Sean Quinn'
maintainer_email  'swquinn@gmail.com'
license           'MIT'
description       'Configures a virtual development environment for Ruby'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '1.0.0'

depends           'application_ruby', '~> 3.0.2'
depends           'apt', '~> 2.6.0'
depends           'build-essential', '~> 2.1.3'
depends           'git', '~> 4.0.2'
depends           'ruby_build', '~> 0.8.0'
depends           'rvm', '~> 0.9.2'
