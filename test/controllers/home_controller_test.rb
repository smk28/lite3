require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get second" do
    get home_second_url
    assert_response :success
  end

  test "should get map" do
    get home_map_url
    assert_response :success
  end

end
