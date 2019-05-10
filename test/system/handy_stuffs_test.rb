require "application_system_test_case"

class HandyStuffsTest < ApplicationSystemTestCase
  setup do
    @handy_stuff = handy_stuffs(:one)
  end

  test "visiting the index" do
    visit handy_stuffs_url
    assert_selector "h1", text: "Handy Stuffs"
  end

  test "creating a Handy stuff" do
    visit handy_stuffs_url
    click_on "New Handy Stuff"

    fill_in "Description", with: @handy_stuff.description
    fill_in "Image", with: @handy_stuff.image
    fill_in "Land", with: @handy_stuff.land
    fill_in "Name", with: @handy_stuff.name
    fill_in "Title", with: @handy_stuff.title
    click_on "Create Handy stuff"

    assert_text "Handy stuff was successfully created"
    click_on "Back"
  end

  test "updating a Handy stuff" do
    visit handy_stuffs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @handy_stuff.description
    fill_in "Image", with: @handy_stuff.image
    fill_in "Land", with: @handy_stuff.land
    fill_in "Name", with: @handy_stuff.name
    fill_in "Title", with: @handy_stuff.title
    click_on "Update Handy stuff"

    assert_text "Handy stuff was successfully updated"
    click_on "Back"
  end

  test "destroying a Handy stuff" do
    visit handy_stuffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Handy stuff was successfully destroyed"
  end
end
