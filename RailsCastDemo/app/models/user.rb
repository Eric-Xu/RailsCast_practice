class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :middle_initial, :email, :password, :password_confirmation

  has_secure_password

  validates_uniqueness_of :email
  # Ep 41 Conditional Validations
  validates_presence_of :first_name, :last_name, :email, :on => :create
  validates_presence_of :password, :if => :should_validate_password?
  attr_accessor :updating_password
  # End Ep 41

  def full_name
  	[first_name, middle_initial_with_full_stop, last_name].compact.join(" ")
  end

  def middle_initial_with_full_stop
  	"#{middle_initial}." unless middle_initial.blank?
  end

  # Ep 41; set in the controller update action
  def should_validate_password?
  	updating_password || new_record?
  end
end
