# -*- encoding : utf-8 -*-
require_relative "../spec_helper"

describe Visit, :type => :model do
  let(:neighbor)  {
    Neighbor.new(
      first_name: "Tom", last_name: "Turkey"
    )
  }
  subject(:visit) { Visit.new(neighbor: neighbor) }

  describe '#neighbor_name' do
    subject { super().neighbor_name }
    it { is_expected.to eq("Tom Turkey") }
  end
end
