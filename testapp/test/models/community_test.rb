require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
	test "community name must not be empty" do
		community = Community.new
		assert community.invalid?
		assert community.errors[:name].any?
	end

	test "create community with valid name" do
		c = Community.new name: 'Good'
		assert c.valid?, 'community should be ok'

		c = Community.new name: 'Good but very long community name'
		assert c.valid?, 'community should be ok'
	end

	test "fail when community name is too small" do
		c = Community.new name: 'Bad'
		assert c.invalid?

		c = Community.new name: '      '
		assert c.invalid?

		c = Community.new name: nil
		assert c.invalid?

		c = Community.new name: 1
		assert c.invalid?
	end
end
