#Igroup create
  netapp_igroup node['igroup']['name'] do
    svm             node['netapp']['vserver']
    igroup_type     node['igroup']['igroup_type']
    ostype          node['igroup']['ostype']
    action :create
 end

#Igroup add initiator
  netapp_igroup node['igroup']['name'] do
    svm             node['netapp']['vserver']
    initiator       node['igroup']['initiator']
    action :add_rule
 end
