require "application_system_test_case"

class TalksTest < ApplicationSystemTestCase
  setup do
    @talk = talks(:one)
  end

  test "visiting the index" do
    visit talks_url
    assert_selector "h1", text: "Talks"
  end

  test "should create talk" do
    visit talks_url
    click_on "New talk"

    fill_in "Importance", with: @talk.importance
    fill_in "Topic", with: @talk.topic
    fill_in "Tribe", with: @talk.tribe
    click_on "Create Talk"

    assert_text "Talk was successfully created"
    click_on "Back"
  end

  test "should update Talk" do
    visit talk_url(@talk)
    click_on "Edit this talk", match: :first

    fill_in "Importance", with: @talk.importance
    fill_in "Topic", with: @talk.topic
    fill_in "Tribe", with: @talk.tribe
    click_on "Update Talk"

    assert_text "Talk was successfully updated"
    click_on "Back"
  end

  test "should destroy Talk" do
    visit talk_url(@talk)
    click_on "Destroy this talk", match: :first

    assert_text "Talk was successfully destroyed"
  end
end
