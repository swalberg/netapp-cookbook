# Cookbook Name:: netapp
# Provider:: igroup
#

include NetApp::Api

use_inline_resources

action :create do

  # Create API Request.
  netapp_igroup_api = netapp_hash

  netapp_igroup_api[:api_name] = "igroup-create"
  netapp_igroup_api[:resource] = "igroup"
  netapp_igroup_api[:action] = "create"
  netapp_igroup_api[:svm] = new_resource.svm
  netapp_igroup_api[:api_attribute]["initiator-group-name"] = new_resource.name
  netapp_igroup_api[:api_attribute]["initiator-group-type"] = new_resource.igroup_type
  netapp_igroup_api[:api_attribute]["os-type"] = new_resource.ostype

   # Invoke NetApp API.
    resource_update = invoke(netapp_igroup_api)
    new_resource.updated_by_last_action(true) if resource_update

end

action :add_rule do

  # Create API Request.
  netapp_igroup_add_api = netapp_hash

  netapp_igroup_add_api[:api_name] = "igroup-add"
  netapp_igroup_add_api[:resource] = "igroup"
  netapp_igroup_add_api[:action] = "add_rule"
  netapp_igroup_add_api[:svm] = new_resource.svm
  netapp_igroup_add_api[:api_attribute]["initiator-group-name"] = new_resource.name
  netapp_igroup_add_api[:api_attribute]["initiator"] = new_resource.initiator

   # Invoke NetApp API.
    resource_update = invoke(netapp_igroup_add_api)
    new_resource.updated_by_last_action(true) if resource_update

end
