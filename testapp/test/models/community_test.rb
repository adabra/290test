require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
	test "community name must not be empty" do
		community = Community.new
		assert community.invalid?
		assert community.errors[:name].any?
	end
end
