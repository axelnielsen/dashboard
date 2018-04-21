require 'test_helper'

class StartMale110mtshudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male110mtshudrle = start_male110mtshudrles(:one)
  end

  test "should get index" do
    get start_male110mtshudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male110mtshudrle_url
    assert_response :success
  end

  test "should create start_male110mtshudrle" do
    assert_difference('StartMale110mtshudrle.count') do
      post start_male110mtshudrles_url, params: { start_male110mtshudrle: { achievement: @start_male110mtshudrle.achievement, an: @start_male110mtshudrle.an, athlete: @start_male110mtshudrle.athlete, club: @start_male110mtshudrle.club, country: @start_male110mtshudrle.country, male110mtshudrleStart_id: @start_male110mtshudrle.male110mtshudrleStart_id, number: @start_male110mtshudrle.number, place: @start_male110mtshudrle.place, rail: @start_male110mtshudrle.rail, region: @start_male110mtshudrle.region } }
    end

    assert_redirected_to start_male110mtshudrle_url(StartMale110mtshudrle.last)
  end

  test "should show start_male110mtshudrle" do
    get start_male110mtshudrle_url(@start_male110mtshudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male110mtshudrle_url(@start_male110mtshudrle)
    assert_response :success
  end

  test "should update start_male110mtshudrle" do
    patch start_male110mtshudrle_url(@start_male110mtshudrle), params: { start_male110mtshudrle: { achievement: @start_male110mtshudrle.achievement, an: @start_male110mtshudrle.an, athlete: @start_male110mtshudrle.athlete, club: @start_male110mtshudrle.club, country: @start_male110mtshudrle.country, male110mtshudrleStart_id: @start_male110mtshudrle.male110mtshudrleStart_id, number: @start_male110mtshudrle.number, place: @start_male110mtshudrle.place, rail: @start_male110mtshudrle.rail, region: @start_male110mtshudrle.region } }
    assert_redirected_to start_male110mtshudrle_url(@start_male110mtshudrle)
  end

  test "should destroy start_male110mtshudrle" do
    assert_difference('StartMale110mtshudrle.count', -1) do
      delete start_male110mtshudrle_url(@start_male110mtshudrle)
    end

    assert_redirected_to start_male110mtshudrles_url
  end
end
