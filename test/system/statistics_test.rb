require "application_system_test_case"

class StatisticsTest < ApplicationSystemTestCase
  setup do
    @statistic = statistics(:one)
  end

  test "visiting the index" do
    visit statistics_url
    assert_selector "h1", text: "Statistics"
  end

  test "creating a Statistic" do
    visit statistics_url
    click_on "New Statistic"

    fill_in "Analytical Type", with: @statistic.analytical_type
    fill_in "No Of Samples", with: @statistic.no_of_samples
    fill_in "No Of Treatments", with: @statistic.no_of_treatments
    click_on "Create Statistic"

    assert_text "Statistic was successfully created"
    click_on "Back"
  end

  test "updating a Statistic" do
    visit statistics_url
    click_on "Edit", match: :first

    fill_in "Analytical Type", with: @statistic.analytical_type
    fill_in "No Of Samples", with: @statistic.no_of_samples
    fill_in "No Of Treatments", with: @statistic.no_of_treatments
    click_on "Update Statistic"

    assert_text "Statistic was successfully updated"
    click_on "Back"
  end

  test "destroying a Statistic" do
    visit statistics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Statistic was successfully destroyed"
  end
end
