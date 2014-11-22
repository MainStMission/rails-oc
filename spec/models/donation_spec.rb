# -*- encoding : utf-8 -*-
require_relative "../spec_helper"

describe Donation, :type => :model do
  subject(:donation) { FactoryGirl.create(:donation) }

  describe "#donor_name" do 
    let!(:donor) { donation.donor }

    describe '#donor_name' do
      subject { super().donor_name }
      it { is_expected.to eq(donor.name) }
    end
  end
end
