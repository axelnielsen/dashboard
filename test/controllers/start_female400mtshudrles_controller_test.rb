require 'test_helper'

class StartFemale400mtshudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female400mtshudrle = start_female400mtshudrles(:one)
  end

  test "should get index" do
    get start_female400mtshudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female400mtshudrle_url
    assert_response :success
  end

  test "should create start_female400mtshudrle" do
    assert_difference('StartFemale400mtshudrle.count') do
      post start_female400mtshudrles_url, params: { start_female400mtshudrle: { achievement: @start_female400mtshudrle.achievement, an: @start_female400mtshudrle.an, athlete: @start_female400mtshudrle.athlete, club: @start_female400mtshudrle.club, country: @start_female400mtshudrle.country, female400mtshudrleStart_id: @start_female400mtshudrle.female400mtshudrleStart_id, number: @start_female400mtshudrle.number, place: @start_female400mtshudrle.place, rail: @start_female400mtshudrle.rail, region: @start_female400mtshudrle.region } }
    end

    assert_redirected_to start_female400mtshudrle_url(StartFemale400mtshudrle.last)
  end

  test "should show start_female400mtshudrle" do
    get start_female400mtshudrle_url(@start_female400mtshudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female400mtshudrle_url(@start_female400mtshudrle)
    assert_response :success
  end

  test "should update start_female400mtshudrle" do
    patch start_female400mtshudrle_url(@start_female400mtshudrle), params: { start_female400mtshudrle: { achievement: @start_female400mtshudrle.achievement, an: @start_female400mtshudrle.an, athlete: @start_female400mtshudrle.athlete, club: @start_female400mtshudrle.club, country: @start_female400mtshudrle.country, female400mtshudrleStart_id: @start_female400mtshudrle.female400mtshudrleStart_id, number: @start_female400mtshudrle.number, place: @start_female400mtshudrle.place, rail: @start_female400mtshudrle.rail, region: @start_female400mtshudrle.region } }
    assert_redirected_to start_female400mtshudrle_url(@start_female400mtshudrle)
  end

  test "should destroy start_female400mtshudrle" do
    assert_difference('StartFemale400mtshudrle.count', -1) do
      delete start_female400mtshudrle_url(@start_female400mtshudrle)
    end

    assert_redirected_to start_female400mtshudrles_url
  end
end
