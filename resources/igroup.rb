#
# Author:: Cesar Felce (<cesar.felce@noviscorp.com>)
# Cookbook Name:: netapp
# Resource:: igroup
#

actions :create, :add_rule
default_action :create

attribute :name, :kind_of => String, :required => true, :name_attribute => true
attribute :svm, :kind_of => String

attribute :ostype, :kind_of => String, :required => true, :equal_to => ["aix", "linux", "vmware", "windows"]
attribute :igroup_type, :kind_of => String, :required => true

attribute :initiator, :kind_of => String, :required => true
