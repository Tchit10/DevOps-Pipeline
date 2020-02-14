Vagrant.configure("2") do |config|

  config.vm.define "jenkins" do |jenkins|
    jenkins.vm.box = "debian/buster64"
    jenkins.vm.hostname = "jenkins"
    jenkins.vm.box_url = "debian/buster64"
    jenkins.vm.network :private_network, ip: "192.168.10.2"
    jenkins.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      virtualbox.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      virtualbox.name = "jenkins"
      virtualbox.memory = 1024
      virtualbox.cpus = 2
    end
    jenkins.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
      systemctl restart ssh
    SHELL
    jenkins.vm.provision "shell", path: "install_jenkins.sh"
  end

  config.vm.define "gitlab" do |gitlab|
    gitlab.vm.box = "debian/buster64"
    gitlab.vm.hostname = "gitlab"
    gitlab.vm.box_url = "debian/buster64"
    gitlab.vm.network :private_network, ip: "192.168.10.3"
    gitlab.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      virtualbox.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      virtualbox.name = "gitlab"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
   end
   gitlab.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
      systemctl restart ssh
   SHELL
   gitlab.vm.provision "shell", path: "install_gitlab.sh"
  end

  config.vm.define "bdd" do |bdd|
    bdd.vm.box = "debian/buster64"
    bdd.vm.hostname = "bdd"
    bdd.vm.box_url = "debian/buster64"
    bdd.vm.network :private_network, ip: "192.168.10.4"
    bdd.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      virtualbox.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      virtualbox.name = "bdd"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
   end
   bdd.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
      systemctl restart ssh
   SHELL
   bdd.vm.provision "shell", path: "install_bdd.sh"
  end

  config.vm.define "dev" do |dev|
    dev.vm.box = "debian/buster64"
    dev.vm.hostname = "dev"
    dev.vm.box_url = "debian/buster64"
    dev.vm.network :private_network, ip: "192.168.10.5"
    dev.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      virtualbox.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      virtualbox.name = "dev"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
   end
   dev.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
      systemctl restart ssh
   SHELL
  end

  config.vm.define "stage" do |stage|
    stage.vm.box = "debian/buster64"
    stage.vm.hostname = "stage"
    stage.vm.box_url = "debian/buster64"
    stage.vm.network :private_network, ip: "192.168.10.6"
    stage.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      virtualbox.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      virtualbox.name = "stage"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
   end
   stage.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
      systemctl restart ssh
   SHELL
  end

  config.vm.define "prod" do |prod|
    prod.vm.box = "debian/buster64"
    prod.vm.hostname = "prod"
    prod.vm.box_url = "debian/buster64"
    prod.vm.network :private_network, ip: "192.168.10.7"
    prod.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      virtualbox.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      virtualbox.name = "prod"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
   end
   prod.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
      systemctl restart ssh
   SHELL
  end

  config.vm.define "registry" do |registry|
    registry.vm.box = "debian/buster64"
    registry.vm.hostname = "registry"
    registry.vm.box_url = "debian/buster64"
    registry.vm.network :private_network, ip: "192.168.10.8"
    registry.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      virtualbox.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      virtualbox.name = "registry"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
   end
   registry.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
      systemctl restart ssh
   SHELL
   registry.vm.provision "shell", path: "install_registry.sh"
  end

end
