require "application_system_test_case"

class ApplicationFormsTest < ApplicationSystemTestCase
  setup do
    @application_form = application_forms(:one)
  end

  test "visiting the index" do
    visit application_forms_url
    assert_selector "h1", text: "Application Forms"
  end

  test "creating a Application form" do
    visit application_forms_url
    click_on "New Application Form"

    fill_in "Aadhaar Number", with: @application_form.aadhaar_number
    fill_in "Address", with: @application_form.address
    fill_in "Age", with: @application_form.age
    fill_in "Application Number", with: @application_form.application_number
    fill_in "Blood Group", with: @application_form.blood_group
    fill_in "Date Of Birth", with: @application_form.date_of_birth
    fill_in "Defence Category", with: @application_form.defence_category
    fill_in "Email", with: @application_form.email
    fill_in "Farmers Quota", with: @application_form.farmers_quota
    fill_in "Father Name", with: @application_form.father_name
    fill_in "Gender", with: @application_form.gender
    fill_in "Hall Ticket Number", with: @application_form.hall_ticket_number
    fill_in "Mobile Number", with: @application_form.mobile_number
    fill_in "Mobile Number1", with: @application_form.mobile_number1
    fill_in "Mobile Number2", with: @application_form.mobile_number2
    fill_in "Mother Name", with: @application_form.mother_name
    fill_in "Name", with: @application_form.name
    fill_in "Nationality", with: @application_form.nationality
    fill_in "Ncc Category", with: @application_form.ncc_category
    fill_in "Physically Challenged", with: @application_form.physically_challenged
    fill_in "Physically Challenged Category", with: @application_form.physically_challenged_category
    fill_in "Pincode", with: @application_form.pincode
    fill_in "Place Of Study Vi To Xii", with: @application_form.place_of_study_vi_to_xii
    fill_in "Rank", with: @application_form.rank
    fill_in "Religion", with: @application_form.religion
    fill_in "Social Status", with: @application_form.social_status
    fill_in "Sports Category", with: @application_form.sports_category
    fill_in "State", with: @application_form.state
    click_on "Create Application form"

    assert_text "Application form was successfully created"
    click_on "Back"
  end

  test "updating a Application form" do
    visit application_forms_url
    click_on "Edit", match: :first

    fill_in "Aadhaar Number", with: @application_form.aadhaar_number
    fill_in "Address", with: @application_form.address
    fill_in "Age", with: @application_form.age
    fill_in "Application Number", with: @application_form.application_number
    fill_in "Blood Group", with: @application_form.blood_group
    fill_in "Date Of Birth", with: @application_form.date_of_birth
    fill_in "Defence Category", with: @application_form.defence_category
    fill_in "Email", with: @application_form.email
    fill_in "Farmers Quota", with: @application_form.farmers_quota
    fill_in "Father Name", with: @application_form.father_name
    fill_in "Gender", with: @application_form.gender
    fill_in "Hall Ticket Number", with: @application_form.hall_ticket_number
    fill_in "Mobile Number", with: @application_form.mobile_number
    fill_in "Mobile Number1", with: @application_form.mobile_number1
    fill_in "Mobile Number2", with: @application_form.mobile_number2
    fill_in "Mother Name", with: @application_form.mother_name
    fill_in "Name", with: @application_form.name
    fill_in "Nationality", with: @application_form.nationality
    fill_in "Ncc Category", with: @application_form.ncc_category
    fill_in "Physically Challenged", with: @application_form.physically_challenged
    fill_in "Physically Challenged Category", with: @application_form.physically_challenged_category
    fill_in "Pincode", with: @application_form.pincode
    fill_in "Place Of Study Vi To Xii", with: @application_form.place_of_study_vi_to_xii
    fill_in "Rank", with: @application_form.rank
    fill_in "Religion", with: @application_form.religion
    fill_in "Social Status", with: @application_form.social_status
    fill_in "Sports Category", with: @application_form.sports_category
    fill_in "State", with: @application_form.state
    click_on "Update Application form"

    assert_text "Application form was successfully updated"
    click_on "Back"
  end

  test "destroying a Application form" do
    visit application_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application form was successfully destroyed"
  end
end
