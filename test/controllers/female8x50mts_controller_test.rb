require 'test_helper'

class Female8x50mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female8x50mt = female8x50mts(:one)
  end

  test "should get index" do
    get female8x50mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female8x50mt_url
    assert_response :success
  end

  test "should create female8x50mt" do
    assert_difference('Female8x50mt.count') do
      post female8x50mts_url, params: { female8x50mt: { achievement: @female8x50mt.achievement, an: @female8x50mt.an, athlete: @female8x50mt.athlete, club: @female8x50mt.club, country: @female8x50mt.country, female8x50mts_id: @female8x50mt.female8x50mts_id, number: @female8x50mt.number, place: @female8x50mt.place, rail: @female8x50mt.rail, region: @female8x50mt.region } }
    end

    assert_redirected_to female8x50mt_url(Female8x50mt.last)
  end

  test "should show female8x50mt" do
    get female8x50mt_url(@female8x50mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female8x50mt_url(@female8x50mt)
    assert_response :success
  end

  test "should update female8x50mt" do
    patch female8x50mt_url(@female8x50mt), params: { female8x50mt: { achievement: @female8x50mt.achievement, an: @female8x50mt.an, athlete: @female8x50mt.athlete, club: @female8x50mt.club, country: @female8x50mt.country, female8x50mts_id: @female8x50mt.female8x50mts_id, number: @female8x50mt.number, place: @female8x50mt.place, rail: @female8x50mt.rail, region: @female8x50mt.region } }
    assert_redirected_to female8x50mt_url(@female8x50mt)
  end

  test "should destroy female8x50mt" do
    assert_difference('Female8x50mt.count', -1) do
      delete female8x50mt_url(@female8x50mt)
    end

    assert_redirected_to female8x50mts_url
  end
end
