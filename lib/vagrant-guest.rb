begin
  require "vagrant"
rescue LoadError
  raise "Vagrant is required!"
end

require "guest/guest"

# TODO: rename `MyVagrantGuestPlugin` to something more relevant
module MyVagrantGuestPlugin
  class Plugin < Vagrant.plugin("2")
    # TODO: rename name and description
    name "MyVagrantGuestPlugin"
    description <<-DESC
    This is my guest plugin.
    DESC

    # TODO: rename :myguestplugin to something more relevant.
    # You can also define this plugin as a child of an existing
    # guest plugin here. A child plugin will inherit all of the 
    # capabilities of the parent. To do that add the parent 
    # as an argument to `guest`. For example `guest(:myguestplugin, :linux)`
    # sets the parent plugin to be the linux guest plugin. 
    guest(:myguestplugin) do
      Guest
    end

    # TODO: define guest capabilities. The first argument should 
    # be the name of the plugin from above. The second argument 
    # should be the name of the guest capability
    # For example:
    guest_capability(:myguestplugin, :hello) do
      require_relative 'cap/hello'
      Cap::Hello
    end
  end
end
