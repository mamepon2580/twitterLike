require "application_system_test_case"

class FavosTest < ApplicationSystemTestCase
  setup do
    @favo = favos(:one)
  end

  test "visiting the index" do
    visit favos_url
    assert_selector "h1", text: "Favos"
  end

  test "creating a Favo" do
    visit favos_url
    click_on "New Favo"

    fill_in "Tweet", with: @favo.tweet_id
    fill_in "User", with: @favo.user_id
    click_on "Create Favo"

    assert_text "Favo was successfully created"
    click_on "Back"
  end

  test "updating a Favo" do
    visit favos_url
    click_on "Edit", match: :first

    fill_in "Tweet", with: @favo.tweet_id
    fill_in "User", with: @favo.user_id
    click_on "Update Favo"

    assert_text "Favo was successfully updated"
    click_on "Back"
  end

  test "destroying a Favo" do
    visit favos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Favo was successfully destroyed"
  end
end
