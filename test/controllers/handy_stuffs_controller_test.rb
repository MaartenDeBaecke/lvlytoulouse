require 'test_helper'

class HandyStuffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @handy_stuff = handy_stuffs(:one)
  end

  test "should get index" do
    get handy_stuffs_url
    assert_response :success
  end

  test "should get new" do
    get new_handy_stuff_url
    assert_response :success
  end

  test "should create handy_stuff" do
    assert_difference('HandyStuff.count') do
      post handy_stuffs_url, params: { handy_stuff: { description: @handy_stuff.description, image: @handy_stuff.image, land: @handy_stuff.land, name: @handy_stuff.name, title: @handy_stuff.title } }
    end

    assert_redirected_to handy_stuff_url(HandyStuff.last)
  end

  test "should show handy_stuff" do
    get handy_stuff_url(@handy_stuff)
    assert_response :success
  end

  test "should get edit" do
    get edit_handy_stuff_url(@handy_stuff)
    assert_response :success
  end

  test "should update handy_stuff" do
    patch handy_stuff_url(@handy_stuff), params: { handy_stuff: { description: @handy_stuff.description, image: @handy_stuff.image, land: @handy_stuff.land, name: @handy_stuff.name, title: @handy_stuff.title } }
    assert_redirected_to handy_stuff_url(@handy_stuff)
  end

  test "should destroy handy_stuff" do
    assert_difference('HandyStuff.count', -1) do
      delete handy_stuff_url(@handy_stuff)
    end

    assert_redirected_to handy_stuffs_url
  end
end
