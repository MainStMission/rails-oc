# -*- encoding : utf-8 -*-
class Volunteer < ActiveRecord::Base

 include ActiveModel::ForbiddenAttributesProtection

 validates :first_name, presence: {message: 'Volunteer must have a first name'}
 validates :last_name, presence: {message: 'Volunteer must have a last name'}
 has_paper_trail

 default_scope { order('last_name ASC') }

 has_many :time_cards

 def name
   "#{first_name} #{last_name}"
 end

 def sign_in
   TimeCard.clock_in(self)
 end

 def sign_out
   TimeCard.clock_out(self)
 end

 def signed_in?
   TimeCard.signed_in?(self)
 end

 def sign_in_time
   TimeCard.sign_in_time(self)
 end
end
