require 'test_helper'

class SerieTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serie_type = serie_types(:one)
  end

  test "should get index" do
    get serie_types_url
    assert_response :success
  end

  test "should get new" do
    get new_serie_type_url
    assert_response :success
  end

  test "should create serie_type" do
    assert_difference('SerieType.count') do
      post serie_types_url, params: { serie_type: { name: @serie_type.name } }
    end

    assert_redirected_to serie_type_url(SerieType.last)
  end

  test "should show serie_type" do
    get serie_type_url(@serie_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_serie_type_url(@serie_type)
    assert_response :success
  end

  test "should update serie_type" do
    patch serie_type_url(@serie_type), params: { serie_type: { name: @serie_type.name } }
    assert_redirected_to serie_type_url(@serie_type)
  end

  test "should destroy serie_type" do
    assert_difference('SerieType.count', -1) do
      delete serie_type_url(@serie_type)
    end

    assert_redirected_to serie_types_url
  end
end
