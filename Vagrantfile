Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"

  config.omnibus.chef_version = :latest

  config.berkshelf.enabled = true

  config.vm.provision "chef_solo" do |chef|
    # configuration
    chef.json = {}

    # recipes to install
    #chef.add_recipe "git"
    #chef.add_recipe "adinauer-test-cookbook"
    chef.roles_path = "roles"
    chef.add_role "gitserver"
  end
end
