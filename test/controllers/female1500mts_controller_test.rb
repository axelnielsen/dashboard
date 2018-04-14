require 'test_helper'

class Female1500mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female1500mt = female1500mts(:one)
  end

  test "should get index" do
    get female1500mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female1500mt_url
    assert_response :success
  end

  test "should create female1500mt" do
    assert_difference('Female1500mt.count') do
      post female1500mts_url, params: { female1500mt: { achievement: @female1500mt.achievement, an: @female1500mt.an, athlete: @female1500mt.athlete, club: @female1500mt.club, country: @female1500mt.country, female1500mtsHead_id: @female1500mt.female1500mtsHead_id, number: @female1500mt.number, place: @female1500mt.place, rail: @female1500mt.rail, region: @female1500mt.region } }
    end

    assert_redirected_to female1500mt_url(Female1500mt.last)
  end

  test "should show female1500mt" do
    get female1500mt_url(@female1500mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female1500mt_url(@female1500mt)
    assert_response :success
  end

  test "should update female1500mt" do
    patch female1500mt_url(@female1500mt), params: { female1500mt: { achievement: @female1500mt.achievement, an: @female1500mt.an, athlete: @female1500mt.athlete, club: @female1500mt.club, country: @female1500mt.country, female1500mtsHead_id: @female1500mt.female1500mtsHead_id, number: @female1500mt.number, place: @female1500mt.place, rail: @female1500mt.rail, region: @female1500mt.region } }
    assert_redirected_to female1500mt_url(@female1500mt)
  end

  test "should destroy female1500mt" do
    assert_difference('Female1500mt.count', -1) do
      delete female1500mt_url(@female1500mt)
    end

    assert_redirected_to female1500mts_url
  end
end
