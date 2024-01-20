require "application_system_test_case"

class MiesTest < ApplicationSystemTestCase
  setup do
    @my = mies(:one)
  end

  test "visiting the index" do
    visit mies_url
    assert_selector "h1", text: "Mies"
  end

  test "should create my" do
    visit mies_url
    click_on "New my"

    fill_in "Tribes", with: @my.Tribes
    fill_in "Email", with: @my.email
    fill_in "First name", with: @my.first_name
    fill_in "Last name", with: @my.last_name
    fill_in "Phone", with: @my.phone
    fill_in "Telegram", with: @my.telegram
    fill_in "Tribe", with: @my.tribe
    fill_in "Tribesmen", with: @my.tribesmen
    click_on "Create My"

    assert_text "My was successfully created"
    click_on "Back"
  end

  test "should update My" do
    visit my_url(@my)
    click_on "Edit this my", match: :first

    fill_in "Tribes", with: @my.Tribes
    fill_in "Email", with: @my.email
    fill_in "First name", with: @my.first_name
    fill_in "Last name", with: @my.last_name
    fill_in "Phone", with: @my.phone
    fill_in "Telegram", with: @my.telegram
    fill_in "Tribe", with: @my.tribe
    fill_in "Tribesmen", with: @my.tribesmen
    click_on "Update My"

    assert_text "My was successfully updated"
    click_on "Back"
  end

  test "should destroy My" do
    visit my_url(@my)
    click_on "Destroy this my", match: :first

    assert_text "My was successfully destroyed"
  end
end
