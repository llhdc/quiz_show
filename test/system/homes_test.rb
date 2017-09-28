require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit homes_url

    assert_selector "h1", text: "Home"
  end

  test "add home" do
    visit homes_url

    click_on "New Home"

    fill_in "Title", with: "Yuss"
    fill_in "Body", with: "Woohoo!"

    click_on "Create Home"

    assert_text "Yuss"
  end
end
