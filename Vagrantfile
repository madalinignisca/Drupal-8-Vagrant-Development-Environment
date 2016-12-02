# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"

  config.vm.synced_folder ".", "/vagrant", type: "rsync"

  config.vm.provision "docker" do |d|
    d.build_image "/vagrant/Docker/Db", args: "-t db"
    d.build_image "/vagrant/Docker/Composer", args: "-t composer-x"
    d.build_image "/vagrant/Docker/PhpCli", args: "-t php-x"
    d.build_image "/vagrant/Docker/PhpFpm", args: "-t 'php-fpm'"
    d.build_image "/vagrant/Docker/WebServer", args: "-t 'web-server'"
    d.run "db"
    d.run "php-fpm"
    d.run "web-server"
  end

end
