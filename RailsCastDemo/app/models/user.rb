class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :middle_initial, :password, :password_confirmation

  def full_name
  	[first_name, middle_initial_with_full_stop, last_name].compact.join(" ")
  end

  def middle_initial_with_full_stop
  	"#{middle_initial}." unless middle_initial.blank?
  end
end
