require "application_system_test_case"

class CepasTest < ApplicationSystemTestCase
  setup do
    @cepa = cepas(:one)
  end

  test "visiting the index" do
    visit cepas_url
    assert_selector "h1", text: "Cepas"
  end

  test "should create cepa" do
    visit cepas_url
    click_on "New cepa"

    fill_in "Nombre", with: @cepa.nombre
    click_on "Create Cepa"

    assert_text "Cepa was successfully created"
    click_on "Back"
  end

  test "should update Cepa" do
    visit cepa_url(@cepa)
    click_on "Edit this cepa", match: :first

    fill_in "Nombre", with: @cepa.nombre
    click_on "Update Cepa"

    assert_text "Cepa was successfully updated"
    click_on "Back"
  end

  test "should destroy Cepa" do
    visit cepa_url(@cepa)
    click_on "Destroy this cepa", match: :first

    assert_text "Cepa was successfully destroyed"
  end
end
