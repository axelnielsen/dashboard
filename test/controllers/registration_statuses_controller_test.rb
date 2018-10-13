require 'test_helper'

class RegistrationStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registration_status = registration_statuses(:one)
  end

  test "should get index" do
    get registration_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_registration_status_url
    assert_response :success
  end

  test "should create registration_status" do
    assert_difference('RegistrationStatus.count') do
      post registration_statuses_url, params: { registration_status: { name: @registration_status.name } }
    end

    assert_redirected_to registration_status_url(RegistrationStatus.last)
  end

  test "should show registration_status" do
    get registration_status_url(@registration_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_registration_status_url(@registration_status)
    assert_response :success
  end

  test "should update registration_status" do
    patch registration_status_url(@registration_status), params: { registration_status: { name: @registration_status.name } }
    assert_redirected_to registration_status_url(@registration_status)
  end

  test "should destroy registration_status" do
    assert_difference('RegistrationStatus.count', -1) do
      delete registration_status_url(@registration_status)
    end

    assert_redirected_to registration_statuses_url
  end
end
