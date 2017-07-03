# Cookbook Name:: netapp
# Provider:: lun
#
# Copyright:: 2014, Chef Software, Inc <legal@getchef.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include NetApp::Api

use_inline_resources

action :create do

  # Create API Request.
  netapp_lun_create_api = netapp_hash

  netapp_lun_create_api[:api_name] = "lun-create-by-size"
  netapp_lun_create_api[:resource] = "lun"
  netapp_lun_create_api[:action] = "create"
  netapp_lun_create_api[:svm] = new_resource.svm
  netapp_lun_create_api[:api_attribute]["ostype"] = new_resource.ostype
  netapp_lun_create_api[:api_attribute]["size"] = new_resource.size
  netapp_lun_create_api[:api_attribute]["prefix-size"] = new_resource.psize
  netapp_lun_create_api[:api_attribute]["path"] = new_resource.path
  netapp_lun_create_api[:api_attribute]["comment"] = new_resource.comment
  netapp_lun_create_api[:api_attribute]["space-allocation-enabled"] = new_resource.allocation
  netapp_lun_create_api[:api_attribute]["space-reservation-enabled"] = new_resource.reservation

   # Invoke NetApp API.
   resource_update = invoke(netapp_lun_create_api)
   new_resource.updated_by_last_action(true) if resource_update

end
