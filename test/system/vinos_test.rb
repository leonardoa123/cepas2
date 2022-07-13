require "application_system_test_case"

class VinosTest < ApplicationSystemTestCase
  setup do
    @vino = vinos(:one)
  end

  test "visiting the index" do
    visit vinos_url
    assert_selector "h1", text: "Vinos"
  end

  test "should create vino" do
    visit vinos_url
    click_on "New vino"

    fill_in "Nombre", with: @vino.nombre
    click_on "Create Vino"

    assert_text "Vino was successfully created"
    click_on "Back"
  end

  test "should update Vino" do
    visit vino_url(@vino)
    click_on "Edit this vino", match: :first

    fill_in "Nombre", with: @vino.nombre
    click_on "Update Vino"

    assert_text "Vino was successfully updated"
    click_on "Back"
  end

  test "should destroy Vino" do
    visit vino_url(@vino)
    click_on "Destroy this vino", match: :first

    assert_text "Vino was successfully destroyed"
  end
end
