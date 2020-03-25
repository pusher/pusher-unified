require 'test_helper'

class AppPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_page_index_url
    assert_response :success
  end

end
