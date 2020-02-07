Vagrant.configure("2") do |config|

  config.vm.define "jenkins" do |jenkins|
    jenkins.vm.provider "virtualbox" do |virtualbox|
      virtualbox.name = "jenkins"
      virtualbox.memory = 2048
      virtualbox.cpus = 1
    end
  end

  config.vm.define "gitlab" do |gitlab|
    gitlab.vm.provider "virtualbox" do |virtualbox|
      virtualbox.name = "gitlab"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
   end
  end

  config.vm.define "bdd" do |bdd|
    bdd.vm.provider "virtualbox" do |virtualbox|
      virtualbox.name = "bdd"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
    end
  end

  config.vm.define "dev" do |dev|
    dev.vm.provider "virtualbox" do |virtualbox|
      virtualbox.name = "dev"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
    end
  end

  config.vm.define "stage" do |stage|
    stage.vm.provider "virtualbox" do |virtualbox|
      virtualbox.name = "stage"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
    end
  end

  config.vm.define "prod" do |prod|
    prod.vm.provider "virtualbox" do |virtualbox|
      virtualbox.name = "prod"
      virtualbox.memory = 1024
      virtualbox.cpus = 1
    end
  end

end
