require "test_helper"

class ThemesSetup < ActionDispatch::IntegrationTest

	def setup
		@theme = themes(:funny)
	end
end

class ThemesControllerTest < ThemesSetup
	test "should get index" do
    get root_path
    assert_response :success
  end
end
