require 'test_helper'

class Female100mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female100mt = female100mts(:one)
  end

  test "should get index" do
    get female100mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female100mt_url
    assert_response :success
  end

  test "should create female100mt" do
    assert_difference('Female100mt.count') do
      post female100mts_url, params: { female100mt: { achievement: @female100mt.achievement, an: @female100mt.an, athlete: @female100mt.athlete, club: @female100mt.club, country: @female100mt.country, female100mtsHead_id: @female100mt.female100mtsHead_id, number: @female100mt.number, place: @female100mt.place, rail: @female100mt.rail, region: @female100mt.region } }
    end

    assert_redirected_to female100mt_url(Female100mt.last)
  end

  test "should show female100mt" do
    get female100mt_url(@female100mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female100mt_url(@female100mt)
    assert_response :success
  end

  test "should update female100mt" do
    patch female100mt_url(@female100mt), params: { female100mt: { achievement: @female100mt.achievement, an: @female100mt.an, athlete: @female100mt.athlete, club: @female100mt.club, country: @female100mt.country, female100mtsHead_id: @female100mt.female100mtsHead_id, number: @female100mt.number, place: @female100mt.place, rail: @female100mt.rail, region: @female100mt.region } }
    assert_redirected_to female100mt_url(@female100mt)
  end

  test "should destroy female100mt" do
    assert_difference('Female100mt.count', -1) do
      delete female100mt_url(@female100mt)
    end

    assert_redirected_to female100mts_url
  end
end
