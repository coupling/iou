require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  should belong_to(:creator)
  should validate_presence_of("creator_id")
  should_not allow_value("email@example.org").for(:email)
  should_not allow_value("a").for(:encrypted_password)
  should_not allow_value("a").for(:password_salt)
end