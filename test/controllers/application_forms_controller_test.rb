require 'test_helper'

class ApplicationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application_form = application_forms(:one)
  end

  test "should get index" do
    get application_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_application_form_url
    assert_response :success
  end

  test "should create application_form" do
    assert_difference('ApplicationForm.count') do
      post application_forms_url, params: { application_form: { aadhaar_number: @application_form.aadhaar_number, address: @application_form.address, age: @application_form.age, application_number: @application_form.application_number, blood_group: @application_form.blood_group, date_of_birth: @application_form.date_of_birth, defence_category: @application_form.defence_category, email: @application_form.email, farmers_quota: @application_form.farmers_quota, father_name: @application_form.father_name, gender: @application_form.gender, hall_ticket_number: @application_form.hall_ticket_number, mobile_number: @application_form.mobile_number, mobile_number1: @application_form.mobile_number1, mobile_number2: @application_form.mobile_number2, mother_name: @application_form.mother_name, name: @application_form.name, nationality: @application_form.nationality, ncc_category: @application_form.ncc_category, physically_challenged: @application_form.physically_challenged, physically_challenged_category: @application_form.physically_challenged_category, pincode: @application_form.pincode, place_of_study_vi_to_xii: @application_form.place_of_study_vi_to_xii, rank: @application_form.rank, religion: @application_form.religion, social_status: @application_form.social_status, sports_category: @application_form.sports_category, state: @application_form.state } }
    end

    assert_redirected_to application_form_url(ApplicationForm.last)
  end

  test "should show application_form" do
    get application_form_url(@application_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_form_url(@application_form)
    assert_response :success
  end

  test "should update application_form" do
    patch application_form_url(@application_form), params: { application_form: { aadhaar_number: @application_form.aadhaar_number, address: @application_form.address, age: @application_form.age, application_number: @application_form.application_number, blood_group: @application_form.blood_group, date_of_birth: @application_form.date_of_birth, defence_category: @application_form.defence_category, email: @application_form.email, farmers_quota: @application_form.farmers_quota, father_name: @application_form.father_name, gender: @application_form.gender, hall_ticket_number: @application_form.hall_ticket_number, mobile_number: @application_form.mobile_number, mobile_number1: @application_form.mobile_number1, mobile_number2: @application_form.mobile_number2, mother_name: @application_form.mother_name, name: @application_form.name, nationality: @application_form.nationality, ncc_category: @application_form.ncc_category, physically_challenged: @application_form.physically_challenged, physically_challenged_category: @application_form.physically_challenged_category, pincode: @application_form.pincode, place_of_study_vi_to_xii: @application_form.place_of_study_vi_to_xii, rank: @application_form.rank, religion: @application_form.religion, social_status: @application_form.social_status, sports_category: @application_form.sports_category, state: @application_form.state } }
    assert_redirected_to application_form_url(@application_form)
  end

  test "should destroy application_form" do
    assert_difference('ApplicationForm.count', -1) do
      delete application_form_url(@application_form)
    end

    assert_redirected_to application_forms_url
  end
end
