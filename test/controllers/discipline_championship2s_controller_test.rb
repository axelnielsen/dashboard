require 'test_helper'

class DisciplineChampionship2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discipline_championship2 = discipline_championship2s(:one)
  end

  test "should get index" do
    get discipline_championship2s_url
    assert_response :success
  end

  test "should get new" do
    get new_discipline_championship2_url
    assert_response :success
  end

  test "should create discipline_championship2" do
    assert_difference('DisciplineChampionship2.count') do
      post discipline_championship2s_url, params: { discipline_championship2: { name: @discipline_championship2.name, sex: @discipline_championship2.sex } }
    end

    assert_redirected_to discipline_championship2_url(DisciplineChampionship2.last)
  end

  test "should show discipline_championship2" do
    get discipline_championship2_url(@discipline_championship2)
    assert_response :success
  end

  test "should get edit" do
    get edit_discipline_championship2_url(@discipline_championship2)
    assert_response :success
  end

  test "should update discipline_championship2" do
    patch discipline_championship2_url(@discipline_championship2), params: { discipline_championship2: { name: @discipline_championship2.name, sex: @discipline_championship2.sex } }
    assert_redirected_to discipline_championship2_url(@discipline_championship2)
  end

  test "should destroy discipline_championship2" do
    assert_difference('DisciplineChampionship2.count', -1) do
      delete discipline_championship2_url(@discipline_championship2)
    end

    assert_redirected_to discipline_championship2s_url
  end
end
