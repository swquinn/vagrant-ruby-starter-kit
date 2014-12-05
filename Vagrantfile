# The MIT License (MIT)
#
# Copyright (c) 2014 Sean Quinn
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  # Enable Berkshelf for managing our Chef cookbooks and recipes
  config.berkshelf.enabled = true

  # Ensure that we're using the latest version of Chef, via the omnibus
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"

    chef.json = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'chef.json')))

    ## Add the recipes which we want to invoke
    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "git"
    chef.add_recipe "rvm::system"
    chef.add_recipe "rvm::vagrant"
    chef.add_recipe "rvm::gem_package"
    chef.add_recipe "ruby_build"
  end

end
