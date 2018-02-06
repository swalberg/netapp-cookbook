#  Author:: Cesar Felce (<cesar.felce@noviscorp.com>)
#  Cookbook Name:: netapp
#  Resource:: lun
#
#  Copyright:: 2014, Chef Software, Inc <legal@getchef.com>
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

 actions :create
 default_action :create

 attribute :name, :kind_of => String, :required => true, :name_attribute => true
 attribute :svm, :kind_of => String

 attribute :ostype, :kind_of => String, :required => true, :equal_to => ["aix", "linux", "vmware", "windows_2008"]
 attribute :size, :kind_of => String, :required => true
 attribute :psize, :kind_of => Fixnum, :required => false, :default => 512
 attribute :path, :kind_of => String, :required => true
 attribute :comment, :kind_of => String, :required => false, :default => "chef"
 attribute :allocation, :kind_of => String, :required => false, :default => "true"
 attribute :reservation, :kind_of => String, :required => false, :default => "false"

 attribute :igroup, :kind_of => String, :required => true
 attribute :id, :kind_of => String, :required => true
