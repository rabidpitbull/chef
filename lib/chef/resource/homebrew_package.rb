#
# Author:: Joshua Timberman (<joshua@chef.io>)
# Author:: Graeme Mathieson (<mathie@woss.name>)
#
# Copyright:: Copyright (c) Chef Software Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require_relative "../provider/package"
require_relative "package"
require_relative "../dist"

class Chef
  class Resource
    class HomebrewPackage < Chef::Resource::Package
      unified_mode true

      provides :homebrew_package
      provides :package, os: "darwin"

      description "Use the homebrew_package resource to manage packages for the macOS platform."
      introduced "12.0"

      property :homebrew_user, [ String, Integer ],
        description: "The name or uid of the Homebrew owner to be used by #{Chef::Dist::PRODUCT} when executing a command."

    end
  end
end
