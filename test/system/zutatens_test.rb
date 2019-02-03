require "application_system_test_case"

class ZutatensTest < ApplicationSystemTestCase
  setup do
    @zutaten = zutatens(:one)
  end

  test "visiting the index" do
    visit zutatens_url
    assert_selector "h1", text: "Zutatens"
  end

  test "creating a Zutaten" do
    visit zutatens_url
    click_on "New Zutaten"

    fill_in "Name", with: @zutaten.name
    fill_in "Preis", with: @zutaten.preis
    click_on "Create Zutaten"

    assert_text "Zutaten was successfully created"
    click_on "Back"
  end

  test "updating a Zutaten" do
    visit zutatens_url
    click_on "Edit", match: :first

    fill_in "Name", with: @zutaten.name
    fill_in "Preis", with: @zutaten.preis
    click_on "Update Zutaten"

    assert_text "Zutaten was successfully updated"
    click_on "Back"
  end

  test "destroying a Zutaten" do
    visit zutatens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zutaten was successfully destroyed"
  end
end
