require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get food" do
    get pages_food_url
    assert_response :success
  end

  test "should get toys" do
    get pages_toys_url
    assert_response :success
  end

  test "should get handy_stuff" do
    get pages_handy_stuff_url
    assert_response :success
  end

end
