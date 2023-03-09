# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module MyVagrantGuestPlugin
  module Cap
    class Hello
      def self.hello(machine)
        # Echo a message on the guest machine
        machine.communicate.execute('echo "hello"')
      end
    end
  end
end
