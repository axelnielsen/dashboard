require 'test_helper'

class Female800mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female800mt = female800mts(:one)
  end

  test "should get index" do
    get female800mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female800mt_url
    assert_response :success
  end

  test "should create female800mt" do
    assert_difference('Female800mt.count') do
      post female800mts_url, params: { female800mt: { achievement: @female800mt.achievement, an: @female800mt.an, athlete: @female800mt.athlete, club: @female800mt.club, country: @female800mt.country, female800mtHead_id: @female800mt.female800mtHead_id, number: @female800mt.number, place: @female800mt.place, rail: @female800mt.rail, region: @female800mt.region } }
    end

    assert_redirected_to female800mt_url(Female800mt.last)
  end

  test "should show female800mt" do
    get female800mt_url(@female800mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female800mt_url(@female800mt)
    assert_response :success
  end

  test "should update female800mt" do
    patch female800mt_url(@female800mt), params: { female800mt: { achievement: @female800mt.achievement, an: @female800mt.an, athlete: @female800mt.athlete, club: @female800mt.club, country: @female800mt.country, female800mtHead_id: @female800mt.female800mtHead_id, number: @female800mt.number, place: @female800mt.place, rail: @female800mt.rail, region: @female800mt.region } }
    assert_redirected_to female800mt_url(@female800mt)
  end

  test "should destroy female800mt" do
    assert_difference('Female800mt.count', -1) do
      delete female800mt_url(@female800mt)
    end

    assert_redirected_to female800mts_url
  end
end
