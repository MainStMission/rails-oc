# -*- encoding : utf-8 -*-
require_relative "../rails_helper"

SSN = '123-45-6789'
SN2 = '123-33-5208'
describe Neighbor, :type => :model do

  ## Quick Shoulda test for the relation

  it {is_expected.to belong_to(:household)}

  ## Shanes SSN testing

  context 'ssn' do
    let(:neighbor) do
      Neighbor.new.tap do |n|
        n.first_name = 'Sam'
        n.last_name = 'May'
        n.ssn = SSN
        n.save
      end
    end

    it "should be encrypted" do
      neighbor_id = neighbor.id
      neighbor = Neighbor.find_by_id(neighbor_id)

      expect(neighbor.ssn).to eq(SSN)
      expect(neighbor.encrypted_ssn).not_to eq(SSN)
    end

    it "should be salted" do
      another_neighbor = Neighbor.new
      another_neighbor.ssn = SN2

      expect(neighbor.encrypted_ssn).not_to eq(another_neighbor.encrypted_ssn)
    end

    ### Let's go with factories
    ##

    it "should have a valid factory" do
      pending "check on create"
      expect(create(:neighbor)).to be_valid
    end

    it "Returns a neighbors full name as a string" do
      pending "check on create"
      expect(create(:neighbor, first_name: "Tom", last_name:"Brooke").name).to eq("Tom Brooke")
    end
  end
end
