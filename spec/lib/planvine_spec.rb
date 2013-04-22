require 'spec_helper'

describe Planvine do
  describe '#for' do
    it 'returns a planvine api object' do
      Planvine.for('API-KEY').should be_an_instance_of(Planvine::PlanvineAPI)
    end
  end
end
