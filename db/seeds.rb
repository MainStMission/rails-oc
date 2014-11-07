# -*- encoding : utf-8 -*-


User.attr_accessible :normally_inaccessible_attribute

unless User.find_by_email("user@example.com").present?
   user = User.create! :first_name => 'First', :last_name => 'User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
   puts 'New user created: ' << user.name
end

unless User.find_by_email("user2@example.com").present?
  user2 = User.create! :first_name => 'Second', :last_name => 'User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
   puts 'New user created: ' << user2.name
end

# Mission.create! :visit_note_title => 'Initial Visit Note', :visit_note_text => 'Thank you for helping by volunteering at Mani Street Mission'
Household.create! :household_name => "Brooke" 
Neighbor.create! :first_name => "Tom", :last_name => "Brooke" 
