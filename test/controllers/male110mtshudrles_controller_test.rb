require 'test_helper'

class Male110mtshudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male110mtshudrle = male110mtshudrles(:one)
  end

  test "should get index" do
    get male110mtshudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_male110mtshudrle_url
    assert_response :success
  end

  test "should create male110mtshudrle" do
    assert_difference('Male110mtshudrle.count') do
      post male110mtshudrles_url, params: { male110mtshudrle: { achievement: @male110mtshudrle.achievement, an: @male110mtshudrle.an, athlete: @male110mtshudrle.athlete, club: @male110mtshudrle.club, country: @male110mtshudrle.country, male110mtshudrleHead_id: @male110mtshudrle.male110mtshudrleHead_id, number: @male110mtshudrle.number, place: @male110mtshudrle.place, rail: @male110mtshudrle.rail, region: @male110mtshudrle.region } }
    end

    assert_redirected_to male110mtshudrle_url(Male110mtshudrle.last)
  end

  test "should show male110mtshudrle" do
    get male110mtshudrle_url(@male110mtshudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_male110mtshudrle_url(@male110mtshudrle)
    assert_response :success
  end

  test "should update male110mtshudrle" do
    patch male110mtshudrle_url(@male110mtshudrle), params: { male110mtshudrle: { achievement: @male110mtshudrle.achievement, an: @male110mtshudrle.an, athlete: @male110mtshudrle.athlete, club: @male110mtshudrle.club, country: @male110mtshudrle.country, male110mtshudrleHead_id: @male110mtshudrle.male110mtshudrleHead_id, number: @male110mtshudrle.number, place: @male110mtshudrle.place, rail: @male110mtshudrle.rail, region: @male110mtshudrle.region } }
    assert_redirected_to male110mtshudrle_url(@male110mtshudrle)
  end

  test "should destroy male110mtshudrle" do
    assert_difference('Male110mtshudrle.count', -1) do
      delete male110mtshudrle_url(@male110mtshudrle)
    end

    assert_redirected_to male110mtshudrles_url
  end
end
