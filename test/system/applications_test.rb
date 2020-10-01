require "application_system_test_case"

class ApplicationsTest < ApplicationSystemTestCase
  setup do
    @application = applications(:one)
  end

  test "visiting the index" do
    visit applications_url
    assert_selector "h1", text: "Applications"
  end

  test "creating a Application" do
    visit applications_url
    click_on "New Application"

    fill_in "Address", with: @application.address
    fill_in "Contact", with: @application.contact
    fill_in "Education", with: @application.education
    fill_in "Email", with: @application.email
    fill_in "Fname", with: @application.fname
    fill_in "Gender", with: @application.gender
    fill_in "Lname", with: @application.lname
    click_on "Create Application"

    assert_text "Application was successfully created"
    click_on "Back"
  end

  test "updating a Application" do
    visit applications_url
    click_on "Edit", match: :first

    fill_in "Address", with: @application.address
    fill_in "Contact", with: @application.contact
    fill_in "Education", with: @application.education
    fill_in "Email", with: @application.email
    fill_in "Fname", with: @application.fname
    fill_in "Gender", with: @application.gender
    fill_in "Lname", with: @application.lname
    click_on "Update Application"

    assert_text "Application was successfully updated"
    click_on "Back"
  end

  test "destroying a Application" do
    visit applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application was successfully destroyed"
  end
end
