require "application_system_test_case"

class EnologosTest < ApplicationSystemTestCase
  setup do
    @enologo = enologos(:one)
  end

  test "visiting the index" do
    visit enologos_url
    assert_selector "h1", text: "Enologos"
  end

  test "should create enologo" do
    visit enologos_url
    click_on "New enologo"

    fill_in "Edad", with: @enologo.edad
    fill_in "Nacionalidad", with: @enologo.nacionalidad
    fill_in "Nombre", with: @enologo.nombre
    click_on "Create Enologo"

    assert_text "Enologo was successfully created"
    click_on "Back"
  end

  test "should update Enologo" do
    visit enologo_url(@enologo)
    click_on "Edit this enologo", match: :first

    fill_in "Edad", with: @enologo.edad
    fill_in "Nacionalidad", with: @enologo.nacionalidad
    fill_in "Nombre", with: @enologo.nombre
    click_on "Update Enologo"

    assert_text "Enologo was successfully updated"
    click_on "Back"
  end

  test "should destroy Enologo" do
    visit enologo_url(@enologo)
    click_on "Destroy this enologo", match: :first

    assert_text "Enologo was successfully destroyed"
  end
end
