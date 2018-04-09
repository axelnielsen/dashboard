require 'test_helper'

class DisciplineDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discipline_detail = discipline_details(:one)
  end

  test "should get index" do
    get discipline_details_url
    assert_response :success
  end

  test "should get new" do
    get new_discipline_detail_url
    assert_response :success
  end

  test "should create discipline_detail" do
    assert_difference('DisciplineDetail.count') do
      post discipline_details_url, params: { discipline_detail: { name: @discipline_detail.name, value: @discipline_detail.value } }
    end

    assert_redirected_to discipline_detail_url(DisciplineDetail.last)
  end

  test "should show discipline_detail" do
    get discipline_detail_url(@discipline_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_discipline_detail_url(@discipline_detail)
    assert_response :success
  end

  test "should update discipline_detail" do
    patch discipline_detail_url(@discipline_detail), params: { discipline_detail: { name: @discipline_detail.name, value: @discipline_detail.value } }
    assert_redirected_to discipline_detail_url(@discipline_detail)
  end

  test "should destroy discipline_detail" do
    assert_difference('DisciplineDetail.count', -1) do
      delete discipline_detail_url(@discipline_detail)
    end

    assert_redirected_to discipline_details_url
  end
end
