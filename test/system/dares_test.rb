require "application_system_test_case"

class DaresTest < ApplicationSystemTestCase
  setup do
    @dare = dares(:one)
  end

  test "visiting the index" do
    visit dares_url
    assert_selector "h1", text: "Dares"
  end

  test "creating a Dare" do
    visit dares_url
    click_on "New Dare"

    fill_in "Text", with: @dare.text
    click_on "Create Dare"

    assert_text "Dare was successfully created"
    click_on "Back"
  end

  test "updating a Dare" do
    visit dares_url
    click_on "Edit", match: :first

    fill_in "Text", with: @dare.text
    click_on "Update Dare"

    assert_text "Dare was successfully updated"
    click_on "Back"
  end

  test "destroying a Dare" do
    visit dares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dare was successfully destroyed"
  end
end
