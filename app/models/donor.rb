# -*- encoding : utf-8 -*-
class Donor < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  validates :first_name, presence: {message: 'Donor must have a first name'}
  validates :last_name, presence: {message: 'Donor must have a last name'}
  has_paper_trail

  def name
     [first_name, last_name].join " "
  end

  def name= full_name
    split = full_name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end

end
