require 'test_helper'

class CompetitionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competition_type = competition_types(:one)
  end

  test "should get index" do
    get competition_types_url
    assert_response :success
  end

  test "should get new" do
    get new_competition_type_url
    assert_response :success
  end

  test "should create competition_type" do
    assert_difference('CompetitionType.count') do
      post competition_types_url, params: { competition_type: { tipo: @competition_type.tipo } }
    end

    assert_redirected_to competition_type_url(CompetitionType.last)
  end

  test "should show competition_type" do
    get competition_type_url(@competition_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_competition_type_url(@competition_type)
    assert_response :success
  end

  test "should update competition_type" do
    patch competition_type_url(@competition_type), params: { competition_type: { tipo: @competition_type.tipo } }
    assert_redirected_to competition_type_url(@competition_type)
  end

  test "should destroy competition_type" do
    assert_difference('CompetitionType.count', -1) do
      delete competition_type_url(@competition_type)
    end

    assert_redirected_to competition_types_url
  end
end
