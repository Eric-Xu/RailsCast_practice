class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :middle_initial, :password, :password_confirmation

  def full_name
  	if middle_initial.blank?
  		first_name + " " + last_name
  	else
  		first_name + " #{middle_initial}. " + last_name
  	end
  end
end
