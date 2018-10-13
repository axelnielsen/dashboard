require 'test_helper'

class RegistrationHead2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registration_head2 = registration_head2s(:one)
  end

  test "should get index" do
    get registration_head2s_url
    assert_response :success
  end

  test "should get new" do
    get new_registration_head2_url
    assert_response :success
  end

  test "should create registration_head2" do
    assert_difference('RegistrationHead2.count') do
      post registration_head2s_url, params: { registration_head2: { an: @registration_head2.an, championship_id: @registration_head2.championship_id, club: @registration_head2.club, dni: @registration_head2.dni, fecha: @registration_head2.fecha, lastname: @registration_head2.lastname, name: @registration_head2.name, pais: @registration_head2.pais, region: @registration_head2.region, sex_id: @registration_head2.sex_id } }
    end

    assert_redirected_to registration_head2_url(RegistrationHead2.last)
  end

  test "should show registration_head2" do
    get registration_head2_url(@registration_head2)
    assert_response :success
  end

  test "should get edit" do
    get edit_registration_head2_url(@registration_head2)
    assert_response :success
  end

  test "should update registration_head2" do
    patch registration_head2_url(@registration_head2), params: { registration_head2: { an: @registration_head2.an, championship_id: @registration_head2.championship_id, club: @registration_head2.club, dni: @registration_head2.dni, fecha: @registration_head2.fecha, lastname: @registration_head2.lastname, name: @registration_head2.name, pais: @registration_head2.pais, region: @registration_head2.region, sex_id: @registration_head2.sex_id } }
    assert_redirected_to registration_head2_url(@registration_head2)
  end

  test "should destroy registration_head2" do
    assert_difference('RegistrationHead2.count', -1) do
      delete registration_head2_url(@registration_head2)
    end

    assert_redirected_to registration_head2s_url
  end
end
