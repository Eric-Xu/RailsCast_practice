require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :users

  def test_full_name_without_middle_initial
  	user = User.new(:first_name => 'John', :last_name => 'Doe')
  	assert_equal 'John Doe', user.full_name
  end

  def test_full_name_with_middle_initial
  	user = User.new(:first_name => 'John', :middle_initial => 'H', :last_name => 'Doe')
  	assert_equal 'John H. Doe', user.full_name
  end

  def test_full_name_with_blank_middle_initial
  	user = User.new(:first_name => 'John', :middle_initial => '', :last_name => 'Doe')
  	assert_equal 'John Doe', user.full_name
  end
end

# require File.dirname(__FILE__) + '/../test_helper'

# class UserTest < Test::Unit::TestCase
#   fixtures :users

#   def test_full_name_without_middle_initial
#   	user = User.new(:first_name => 'John', :last_name => 'Doe')
#   	assert_equal 'John Doe', user.full_name
#   end

#   def test_full_name_with_middle_initial
#   	user = User.new(:first_name => 'John', :middle_initial => 'H', :last_name => 'Doe')
#   	assert_equal 'John H. Doe', user.full_name
#   end

#   def test_full_name_with_blank_middle_initial
#   	user = User.new(:first_name => 'John', :middle_initial => '', :last_name => 'Doe')
#   	assert_equal 'John Doe', user.full_name
#   end
# end