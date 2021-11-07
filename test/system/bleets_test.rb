require "application_system_test_case"

class BleetsTest < ApplicationSystemTestCase
  setup do
    @bleet = bleets(:one)
  end

  test "visiting the index" do
    visit bleets_url
    assert_selector "h1", text: "Bleets"
  end

  test "creating a Bleet" do
    visit bleets_url
    click_on "New Bleet"

    fill_in "Bleet", with: @bleet.bleet
    click_on "Create Bleet"

    assert_text "Bleet was successfully created"
    click_on "Back"
  end

  test "updating a Bleet" do
    visit bleets_url
    click_on "Edit", match: :first

    fill_in "Bleet", with: @bleet.bleet
    click_on "Update Bleet"

    assert_text "Bleet was successfully updated"
    click_on "Back"
  end

  test "destroying a Bleet" do
    visit bleets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bleet was successfully destroyed"
  end
end
