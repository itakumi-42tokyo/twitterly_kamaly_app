require "test_helper"

class ThemeSetup < ActiveSupport::TestCase

	def setup
		@theme = themes(:funny)
	end
end

class ThemeTest < ThemeSetup
	test "should theme be valid" do
		assert @theme.valid?
	end
end