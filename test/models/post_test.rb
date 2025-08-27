require "test_helper"

class PostSetup < ActiveSupport::TestCase

	def setup
		@post = posts(:hello)
	end
end

class PostTest < PostSetup
	test "validate post content presence" do
		assert @post.valid?
	end
end
