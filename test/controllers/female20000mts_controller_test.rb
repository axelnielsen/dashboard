require 'test_helper'

class Female20000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female20000mt = female20000mts(:one)
  end

  test "should get index" do
    get female20000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female20000mt_url
    assert_response :success
  end

  test "should create female20000mt" do
    assert_difference('Female20000mt.count') do
      post female20000mts_url, params: { female20000mt: { achievement: @female20000mt.achievement, an: @female20000mt.an, athlete: @female20000mt.athlete, club: @female20000mt.club, country: @female20000mt.country, female20000mtHead_id: @female20000mt.female20000mtHead_id, number: @female20000mt.number, place: @female20000mt.place, rail: @female20000mt.rail, region: @female20000mt.region } }
    end

    assert_redirected_to female20000mt_url(Female20000mt.last)
  end

  test "should show female20000mt" do
    get female20000mt_url(@female20000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female20000mt_url(@female20000mt)
    assert_response :success
  end

  test "should update female20000mt" do
    patch female20000mt_url(@female20000mt), params: { female20000mt: { achievement: @female20000mt.achievement, an: @female20000mt.an, athlete: @female20000mt.athlete, club: @female20000mt.club, country: @female20000mt.country, female20000mtHead_id: @female20000mt.female20000mtHead_id, number: @female20000mt.number, place: @female20000mt.place, rail: @female20000mt.rail, region: @female20000mt.region } }
    assert_redirected_to female20000mt_url(@female20000mt)
  end

  test "should destroy female20000mt" do
    assert_difference('Female20000mt.count', -1) do
      delete female20000mt_url(@female20000mt)
    end

    assert_redirected_to female20000mts_url
  end
end
