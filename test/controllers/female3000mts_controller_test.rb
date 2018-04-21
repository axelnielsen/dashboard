require 'test_helper'

class Female3000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female3000mt = female3000mts(:one)
  end

  test "should get index" do
    get female3000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female3000mt_url
    assert_response :success
  end

  test "should create female3000mt" do
    assert_difference('Female3000mt.count') do
      post female3000mts_url, params: { female3000mt: { achievement: @female3000mt.achievement, an: @female3000mt.an, athlete: @female3000mt.athlete, club: @female3000mt.club, country: @female3000mt.country, female3000mtHead_id: @female3000mt.female3000mtHead_id, number: @female3000mt.number, place: @female3000mt.place, rail: @female3000mt.rail, region: @female3000mt.region } }
    end

    assert_redirected_to female3000mt_url(Female3000mt.last)
  end

  test "should show female3000mt" do
    get female3000mt_url(@female3000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female3000mt_url(@female3000mt)
    assert_response :success
  end

  test "should update female3000mt" do
    patch female3000mt_url(@female3000mt), params: { female3000mt: { achievement: @female3000mt.achievement, an: @female3000mt.an, athlete: @female3000mt.athlete, club: @female3000mt.club, country: @female3000mt.country, female3000mtHead_id: @female3000mt.female3000mtHead_id, number: @female3000mt.number, place: @female3000mt.place, rail: @female3000mt.rail, region: @female3000mt.region } }
    assert_redirected_to female3000mt_url(@female3000mt)
  end

  test "should destroy female3000mt" do
    assert_difference('Female3000mt.count', -1) do
      delete female3000mt_url(@female3000mt)
    end

    assert_redirected_to female3000mts_url
  end
end
