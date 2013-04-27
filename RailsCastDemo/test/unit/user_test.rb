require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "full name" do
    assert_equal 'John H. Smith', full_name_test('John', 'H', 'Smith'), 'with middle initial'
    assert_equal 'John Smith', full_name_test('John', nil, 'Smith'), 'nil middle initial'
    assert_equal 'John Smith', full_name_test('John', '', 'Smith'), 'blank middle initial'
  end

  def full_name_test(first, middle, last)
    User.new(first_name: first, middle_initial: middle, last_name: last).full_name
  end
end