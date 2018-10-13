require 'test_helper'

class RegistrationDetail2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registration_detail2 = registration_detail2s(:one)
  end

  test "should get index" do
    get registration_detail2s_url
    assert_response :success
  end

  test "should get new" do
    get new_registration_detail2_url
    assert_response :success
  end

  test "should create registration_detail2" do
    assert_difference('RegistrationDetail2.count') do
      post registration_detail2s_url, params: { registration_detail2: { bestAchievement: @registration_detail2.bestAchievement, competition_id: @registration_detail2.competition_id, registration_head2_id: @registration_detail2.registration_head2_id } }
    end

    assert_redirected_to registration_detail2_url(RegistrationDetail2.last)
  end

  test "should show registration_detail2" do
    get registration_detail2_url(@registration_detail2)
    assert_response :success
  end

  test "should get edit" do
    get edit_registration_detail2_url(@registration_detail2)
    assert_response :success
  end

  test "should update registration_detail2" do
    patch registration_detail2_url(@registration_detail2), params: { registration_detail2: { bestAchievement: @registration_detail2.bestAchievement, competition_id: @registration_detail2.competition_id, registration_head2_id: @registration_detail2.registration_head2_id } }
    assert_redirected_to registration_detail2_url(@registration_detail2)
  end

  test "should destroy registration_detail2" do
    assert_difference('RegistrationDetail2.count', -1) do
      delete registration_detail2_url(@registration_detail2)
    end

    assert_redirected_to registration_detail2s_url
  end
end
