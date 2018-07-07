require "application_system_test_case"

class TestdbsTest < ApplicationSystemTestCase
  setup do
    @testdb = testdbs(:one)
  end

  test "visiting the index" do
    visit testdbs_url
    assert_selector "h1", text: "Testdbs"
  end

  test "creating a Testdb" do
    visit testdbs_url
    click_on "New Testdb"

    fill_in "Name", with: @testdb.name
    fill_in "Text", with: @testdb.text
    fill_in "Yes", with: @testdb.yes
    click_on "Create Testdb"

    assert_text "Testdb was successfully created"
    click_on "Back"
  end

  test "updating a Testdb" do
    visit testdbs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @testdb.name
    fill_in "Text", with: @testdb.text
    fill_in "Yes", with: @testdb.yes
    click_on "Update Testdb"

    assert_text "Testdb was successfully updated"
    click_on "Back"
  end

  test "destroying a Testdb" do
    visit testdbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testdb was successfully destroyed"
  end
end
