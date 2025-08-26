require "test_helper"

class Setup < ActionDispatch::IntegrationTest

	def setup
		@theme = themes(:funny)
	end
end

class PostsControllerTest < Setup
  test "should get index" do
    get theme_posts_url(@theme)
    assert_response :success
  end
end
