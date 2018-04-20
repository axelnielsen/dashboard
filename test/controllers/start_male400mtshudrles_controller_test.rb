require 'test_helper'

class StartMale400mtshudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male400mtshudrle = start_male400mtshudrles(:one)
  end

  test "should get index" do
    get start_male400mtshudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male400mtshudrle_url
    assert_response :success
  end

  test "should create start_male400mtshudrle" do
    assert_difference('StartMale400mtshudrle.count') do
      post start_male400mtshudrles_url, params: { start_male400mtshudrle: { achievement: @start_male400mtshudrle.achievement, an: @start_male400mtshudrle.an, athlete: @start_male400mtshudrle.athlete, club: @start_male400mtshudrle.club, country: @start_male400mtshudrle.country, male400mtshudrleStart_id: @start_male400mtshudrle.male400mtshudrleStart_id, number: @start_male400mtshudrle.number, place: @start_male400mtshudrle.place, rail: @start_male400mtshudrle.rail, region: @start_male400mtshudrle.region } }
    end

    assert_redirected_to start_male400mtshudrle_url(StartMale400mtshudrle.last)
  end

  test "should show start_male400mtshudrle" do
    get start_male400mtshudrle_url(@start_male400mtshudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male400mtshudrle_url(@start_male400mtshudrle)
    assert_response :success
  end

  test "should update start_male400mtshudrle" do
    patch start_male400mtshudrle_url(@start_male400mtshudrle), params: { start_male400mtshudrle: { achievement: @start_male400mtshudrle.achievement, an: @start_male400mtshudrle.an, athlete: @start_male400mtshudrle.athlete, club: @start_male400mtshudrle.club, country: @start_male400mtshudrle.country, male400mtshudrleStart_id: @start_male400mtshudrle.male400mtshudrleStart_id, number: @start_male400mtshudrle.number, place: @start_male400mtshudrle.place, rail: @start_male400mtshudrle.rail, region: @start_male400mtshudrle.region } }
    assert_redirected_to start_male400mtshudrle_url(@start_male400mtshudrle)
  end

  test "should destroy start_male400mtshudrle" do
    assert_difference('StartMale400mtshudrle.count', -1) do
      delete start_male400mtshudrle_url(@start_male400mtshudrle)
    end

    assert_redirected_to start_male400mtshudrles_url
  end
end
