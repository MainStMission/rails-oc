# -*- encoding : utf-8 -*-
require_relative "../rails_helper"

describe User, :type => :model do
  subject(:user) {
    FactoryGirl.create(:user, first_name: "Kermit", last_name: "Frog")
  }

  describe '#name' do
    subject { super().name }
    it { is_expected.to eq("Kermit Frog") }
  end
end
