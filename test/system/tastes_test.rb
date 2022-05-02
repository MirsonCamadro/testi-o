require "application_system_test_case"

class TastesTest < ApplicationSystemTestCase
  setup do
    @taste = tastes(:one)
  end

  test "visiting the index" do
    visit tastes_url
    assert_selector "h1", text: "Tastes"
  end

  test "should create taste" do
    visit tastes_url
    click_on "New taste"

    fill_in "Flavor", with: @taste.flavor
    click_on "Create Taste"

    assert_text "Taste was successfully created"
    click_on "Back"
  end

  test "should update Taste" do
    visit taste_url(@taste)
    click_on "Edit this taste", match: :first

    fill_in "Flavor", with: @taste.flavor
    click_on "Update Taste"

    assert_text "Taste was successfully updated"
    click_on "Back"
  end

  test "should destroy Taste" do
    visit taste_url(@taste)
    click_on "Destroy this taste", match: :first

    assert_text "Taste was successfully destroyed"
  end
end
