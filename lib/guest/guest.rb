require 'logger'

module MyVagrantGuestPlugin
  class Guest < Vagrant.plugin("2", :guest)
    def detect?(machine)
      # TODO: run a command on the guest to determine if it is running
      # the OS expected by this plugin. If it is, return true, otherwise
      # return false and Vagrant will try with another guest plugin.
      # You can run a command on the guest machine using a communicator.
      # Ror example: `machine.communicate.test("")`
      return false
    end
  end
end
