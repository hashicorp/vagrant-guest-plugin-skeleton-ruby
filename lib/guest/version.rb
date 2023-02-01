# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module MyVagrantGuestPlugin
  VERSION = File.read(File.expand_path("../../../VERSION", __FILE__)).chop
end
