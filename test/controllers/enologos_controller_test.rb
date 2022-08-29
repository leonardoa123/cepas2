require "test_helper"

class EnologosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enologo = enologos(:one)
  end

  test "should get index" do
    get enologos_url
    assert_response :success
  end

  test "should get new" do
    get new_enologo_url
    assert_response :success
  end

  test "should create enologo" do
    assert_difference("Enologo.count") do
      post enologos_url, params: { enologo: { edad: @enologo.edad, nacionalidad: @enologo.nacionalidad, nombre: @enologo.nombre } }
    end

    assert_redirected_to enologo_url(Enologo.last)
  end

  test "should show enologo" do
    get enologo_url(@enologo)
    assert_response :success
  end

  test "should get edit" do
    get edit_enologo_url(@enologo)
    assert_response :success
  end

  test "should update enologo" do
    patch enologo_url(@enologo), params: { enologo: { edad: @enologo.edad, nacionalidad: @enologo.nacionalidad, nombre: @enologo.nombre } }
    assert_redirected_to enologo_url(@enologo)
  end

  test "should destroy enologo" do
    assert_difference("Enologo.count", -1) do
      delete enologo_url(@enologo)
    end

    assert_redirected_to enologos_url
  end
end
