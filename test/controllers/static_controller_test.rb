require "test_helper"

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get static_page_url
    assert_response :success
  end

  test "should get index" do
    get static_index_url
    assert_response :success
  end
end
