require "application_system_test_case"

class RevistasTest < ApplicationSystemTestCase
  setup do
    @revista = revistas(:one)
  end

  test "visiting the index" do
    visit revistas_url
    assert_selector "h1", text: "Revistas"
  end

  test "should create revista" do
    visit revistas_url
    click_on "New revista"

    fill_in "Nombre", with: @revista.nombre
    click_on "Create Revista"

    assert_text "Revista was successfully created"
    click_on "Back"
  end

  test "should update Revista" do
    visit revista_url(@revista)
    click_on "Edit this revista", match: :first

    fill_in "Nombre", with: @revista.nombre
    click_on "Update Revista"

    assert_text "Revista was successfully updated"
    click_on "Back"
  end

  test "should destroy Revista" do
    visit revista_url(@revista)
    click_on "Destroy this revista", match: :first

    assert_text "Revista was successfully destroyed"
  end
end
