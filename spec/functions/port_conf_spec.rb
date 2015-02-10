require 'spec_helper'
require 'pry-debugger'

describe 'ports_conf' do
  describe 'test mix of ranges and single interfaces' do
    let(:myhash) { {
      '40G' => ['swp1-3'],
      '10G' => ['swp10', 'swp12-13']
    }
    }
    it do
      should run.with_params(myhash).and_return(
        [
          [1, "40G"],
          [2, "40G"],
          [3, "40G"],
          [10, "10G"],
          [12, "10G"],
          [13, "10G"]
        ])
    end
  end
end
