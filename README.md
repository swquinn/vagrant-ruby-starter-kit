# Vagrant-Ruby Starter Kit
The primary purpose of this repository is to provide a simple means of setting up a working Ruby development environment regardless of the platform you are developing on. To do this, we utilize [Vagrant](https://www.vagrantup.com/) and provision a virtual Ubuntu environment using [Chef](http://getchef.com).

## Setting up the Virtual Machine

1. Install the latest version of [Vagrant](http://www.vagrantup.com/downloads.html)
2. Install the latest version of the [Chef Development Kit](http://getchef.com/downloads/chef-dk)
3. Install the Vagrant Berkshelf plugin:
```
$ vagrant plugin install vagrant-berkshelf
```
4. Install the Vagrant Omnibus plugin:
```
$ vagrant plugin install vagrant-omnibus
```
5. Initialize the Vagrant environment:
```
$ vagrant up
```

### Development Environment Components

* **Vagrant** is used to provision virtual environments and to execute code
* **Berkshelf** is a tool for managing cookbooks and recipes for the Chef tool. [Berkshelf](http://berkshelf.com/) was developed by [Riot Games](http://www.riotgames.com/).
