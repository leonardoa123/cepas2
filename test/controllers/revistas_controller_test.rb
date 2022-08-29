require "test_helper"

class RevistasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revista = revistas(:one)
  end

  test "should get index" do
    get revistas_url
    assert_response :success
  end

  test "should get new" do
    get new_revista_url
    assert_response :success
  end

  test "should create revista" do
    assert_difference("Revista.count") do
      post revistas_url, params: { revista: { nombre: @revista.nombre } }
    end

    assert_redirected_to revista_url(Revista.last)
  end

  test "should show revista" do
    get revista_url(@revista)
    assert_response :success
  end

  test "should get edit" do
    get edit_revista_url(@revista)
    assert_response :success
  end

  test "should update revista" do
    patch revista_url(@revista), params: { revista: { nombre: @revista.nombre } }
    assert_redirected_to revista_url(@revista)
  end

  test "should destroy revista" do
    assert_difference("Revista.count", -1) do
      delete revista_url(@revista)
    end

    assert_redirected_to revistas_url
  end
end
