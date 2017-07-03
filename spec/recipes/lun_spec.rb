require_relative '../spec_helper'
require_relative '../helpers/matchers'

describe 'netapp::lun' do
  context 'without :step_into' do
    let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe)}

    it 'creates a new lun' do
      expect(chef_run).to create_netapp_lun('demo_lun').with(
          svm: "cluster2",
          aggregate: "aggr1",
          size: "50", #GB
          ostype: "linux"
        )
    end

  end
end
