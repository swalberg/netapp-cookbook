# Cookbook Name:: netapp
# Recipe:: lun


#EXAMPLE CREATING ISCSI LUN VOL SHOULD EXISTS
lpath = "/vol/demo_vol/demo_lun"
netapp_lun lun do
  svm               node['netapp']['vserver']
  path              lpath
  size              ((50*1024**3).to_i).to_s
  ostype            "linux"
  action :create
end
