require 'test_helper'

class Female400mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female400mt = female400mts(:one)
  end

  test "should get index" do
    get female400mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female400mt_url
    assert_response :success
  end

  test "should create female400mt" do
    assert_difference('Female400mt.count') do
      post female400mts_url, params: { female400mt: { achievement: @female400mt.achievement, an: @female400mt.an, athlete: @female400mt.athlete, club: @female400mt.club, country: @female400mt.country, female400mtsHead_id: @female400mt.female400mtsHead_id, number: @female400mt.number, place: @female400mt.place, rail: @female400mt.rail, region: @female400mt.region } }
    end

    assert_redirected_to female400mt_url(Female400mt.last)
  end

  test "should show female400mt" do
    get female400mt_url(@female400mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female400mt_url(@female400mt)
    assert_response :success
  end

  test "should update female400mt" do
    patch female400mt_url(@female400mt), params: { female400mt: { achievement: @female400mt.achievement, an: @female400mt.an, athlete: @female400mt.athlete, club: @female400mt.club, country: @female400mt.country, female400mtsHead_id: @female400mt.female400mtsHead_id, number: @female400mt.number, place: @female400mt.place, rail: @female400mt.rail, region: @female400mt.region } }
    assert_redirected_to female400mt_url(@female400mt)
  end

  test "should destroy female400mt" do
    assert_difference('Female400mt.count', -1) do
      delete female400mt_url(@female400mt)
    end

    assert_redirected_to female400mts_url
  end
end
