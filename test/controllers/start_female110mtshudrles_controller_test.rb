require 'test_helper'

class StartFemale110mtshudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female110mtshudrle = start_female110mtshudrles(:one)
  end

  test "should get index" do
    get start_female110mtshudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female110mtshudrle_url
    assert_response :success
  end

  test "should create start_female110mtshudrle" do
    assert_difference('StartFemale110mtshudrle.count') do
      post start_female110mtshudrles_url, params: { start_female110mtshudrle: { achievement: @start_female110mtshudrle.achievement, an: @start_female110mtshudrle.an, athlete: @start_female110mtshudrle.athlete, club: @start_female110mtshudrle.club, country: @start_female110mtshudrle.country, female110mtshudrleStart_id: @start_female110mtshudrle.female110mtshudrleStart_id, number: @start_female110mtshudrle.number, place: @start_female110mtshudrle.place, rail: @start_female110mtshudrle.rail, region: @start_female110mtshudrle.region } }
    end

    assert_redirected_to start_female110mtshudrle_url(StartFemale110mtshudrle.last)
  end

  test "should show start_female110mtshudrle" do
    get start_female110mtshudrle_url(@start_female110mtshudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female110mtshudrle_url(@start_female110mtshudrle)
    assert_response :success
  end

  test "should update start_female110mtshudrle" do
    patch start_female110mtshudrle_url(@start_female110mtshudrle), params: { start_female110mtshudrle: { achievement: @start_female110mtshudrle.achievement, an: @start_female110mtshudrle.an, athlete: @start_female110mtshudrle.athlete, club: @start_female110mtshudrle.club, country: @start_female110mtshudrle.country, female110mtshudrleStart_id: @start_female110mtshudrle.female110mtshudrleStart_id, number: @start_female110mtshudrle.number, place: @start_female110mtshudrle.place, rail: @start_female110mtshudrle.rail, region: @start_female110mtshudrle.region } }
    assert_redirected_to start_female110mtshudrle_url(@start_female110mtshudrle)
  end

  test "should destroy start_female110mtshudrle" do
    assert_difference('StartFemale110mtshudrle.count', -1) do
      delete start_female110mtshudrle_url(@start_female110mtshudrle)
    end

    assert_redirected_to start_female110mtshudrles_url
  end
end
