require 'test_helper'

class Female200mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female200mt = female200mts(:one)
  end

  test "should get index" do
    get female200mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female200mt_url
    assert_response :success
  end

  test "should create female200mt" do
    assert_difference('Female200mt.count') do
      post female200mts_url, params: { female200mt: { achievement: @female200mt.achievement, an: @female200mt.an, athlete: @female200mt.athlete, club: @female200mt.club, country: @female200mt.country, female200mtsHead_id: @female200mt.female200mtsHead_id, number: @female200mt.number, place: @female200mt.place, rail: @female200mt.rail, region: @female200mt.region } }
    end

    assert_redirected_to female200mt_url(Female200mt.last)
  end

  test "should show female200mt" do
    get female200mt_url(@female200mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female200mt_url(@female200mt)
    assert_response :success
  end

  test "should update female200mt" do
    patch female200mt_url(@female200mt), params: { female200mt: { achievement: @female200mt.achievement, an: @female200mt.an, athlete: @female200mt.athlete, club: @female200mt.club, country: @female200mt.country, female200mtsHead_id: @female200mt.female200mtsHead_id, number: @female200mt.number, place: @female200mt.place, rail: @female200mt.rail, region: @female200mt.region } }
    assert_redirected_to female200mt_url(@female200mt)
  end

  test "should destroy female200mt" do
    assert_difference('Female200mt.count', -1) do
      delete female200mt_url(@female200mt)
    end

    assert_redirected_to female200mts_url
  end
end
