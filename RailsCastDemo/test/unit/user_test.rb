require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "full name with middle initial" do
    user = User.new(first_name: "John", middle_initial: "H", last_name: "Smith")
    assert_equal 'John H. Smith', user.full_name
  end

  test "full name without middle initial" do
    user = User.new(first_name: "John", last_name: "Smith")
    assert_equal 'John Smith', user.full_name
  end

  test "full name with blank middle initial" do
    user = User.new(first_name: "John", middle_initial: "", last_name: "Smith")
    assert_equal 'John Smith', user.full_name
  end
end