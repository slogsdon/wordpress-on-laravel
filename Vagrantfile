# vi: set syntax=rb #

Vagrant.configure("2") do |config|
  config.vm.box = "quantal64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.network :forwarded_port, guest: 80, host: 8000
  config.vm.network :forwarded_port, guest: 3306, host: 33060

  config.vm.provision :shell, :inline => "apt-get update --fix-missing"
  config.vm.provision :shell, :inline => "apt-get install -y git curl"

  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/install_nginx.sh"
  end

  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/install_mysql.sh"
  end

  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/install_php.sh"
  end

  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/install_composer.sh"
  end

  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/add_wordpress.sh"
  end

  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/add_laravel.sh"
  end
end
