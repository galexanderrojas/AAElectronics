require "application_system_test_case"

class PhonesTest < ApplicationSystemTestCase
  setup do
    @phone = phones(:one)
  end

  test "visiting the index" do
    visit phones_url
    assert_selector "h1", text: "Phones"
  end

  test "creating a Phone" do
    visit phones_url
    click_on "New Phone"

    fill_in "Os", with: @phone.OS
    fill_in "Model", with: @phone.model
    fill_in "Name", with: @phone.name
    fill_in "Vendor", with: @phone.vendor
    fill_in "Version", with: @phone.version
    click_on "Create Phone"

    assert_text "Phone was successfully created"
    click_on "Back"
  end

  test "updating a Phone" do
    visit phones_url
    click_on "Edit", match: :first

    fill_in "Os", with: @phone.OS
    fill_in "Model", with: @phone.model
    fill_in "Name", with: @phone.name
    fill_in "Vendor", with: @phone.vendor
    fill_in "Version", with: @phone.version
    click_on "Update Phone"

    assert_text "Phone was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone" do
    visit phones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone was successfully destroyed"
  end
end
