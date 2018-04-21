require 'test_helper'

class Female110mtshudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female110mtshudrle = female110mtshudrles(:one)
  end

  test "should get index" do
    get female110mtshudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_female110mtshudrle_url
    assert_response :success
  end

  test "should create female110mtshudrle" do
    assert_difference('Female110mtshudrle.count') do
      post female110mtshudrles_url, params: { female110mtshudrle: { achievement: @female110mtshudrle.achievement, an: @female110mtshudrle.an, athlete: @female110mtshudrle.athlete, club: @female110mtshudrle.club, country: @female110mtshudrle.country, female110mtshudrleHead_id: @female110mtshudrle.female110mtshudrleHead_id, number: @female110mtshudrle.number, place: @female110mtshudrle.place, rail: @female110mtshudrle.rail, region: @female110mtshudrle.region } }
    end

    assert_redirected_to female110mtshudrle_url(Female110mtshudrle.last)
  end

  test "should show female110mtshudrle" do
    get female110mtshudrle_url(@female110mtshudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_female110mtshudrle_url(@female110mtshudrle)
    assert_response :success
  end

  test "should update female110mtshudrle" do
    patch female110mtshudrle_url(@female110mtshudrle), params: { female110mtshudrle: { achievement: @female110mtshudrle.achievement, an: @female110mtshudrle.an, athlete: @female110mtshudrle.athlete, club: @female110mtshudrle.club, country: @female110mtshudrle.country, female110mtshudrleHead_id: @female110mtshudrle.female110mtshudrleHead_id, number: @female110mtshudrle.number, place: @female110mtshudrle.place, rail: @female110mtshudrle.rail, region: @female110mtshudrle.region } }
    assert_redirected_to female110mtshudrle_url(@female110mtshudrle)
  end

  test "should destroy female110mtshudrle" do
    assert_difference('Female110mtshudrle.count', -1) do
      delete female110mtshudrle_url(@female110mtshudrle)
    end

    assert_redirected_to female110mtshudrles_url
  end
end
