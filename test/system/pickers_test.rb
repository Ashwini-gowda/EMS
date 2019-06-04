require "application_system_test_case"

class PickersTest < ApplicationSystemTestCase
  setup do
    @picker = pickers(:one)
  end

  test "visiting the index" do
    visit pickers_url
    assert_selector "h1", text: "Pickers"
  end

  test "creating a Picker" do
    visit pickers_url
    click_on "New Picker"

    fill_in "Joining date", with: @picker.joining_date
    click_on "Create Picker"

    assert_text "Picker was successfully created"
    click_on "Back"
  end

  test "updating a Picker" do
    visit pickers_url
    click_on "Edit", match: :first

    fill_in "Joining date", with: @picker.joining_date
    click_on "Update Picker"

    assert_text "Picker was successfully updated"
    click_on "Back"
  end

  test "destroying a Picker" do
    visit pickers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Picker was successfully destroyed"
  end
end
