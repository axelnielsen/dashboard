require 'test_helper'

class Female10000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female10000mt = female10000mts(:one)
  end

  test "should get index" do
    get female10000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female10000mt_url
    assert_response :success
  end

  test "should create female10000mt" do
    assert_difference('Female10000mt.count') do
      post female10000mts_url, params: { female10000mt: { achievement: @female10000mt.achievement, an: @female10000mt.an, athlete: @female10000mt.athlete, club: @female10000mt.club, country: @female10000mt.country, female10000mtHead_id: @female10000mt.female10000mtHead_id, number: @female10000mt.number, place: @female10000mt.place, rail: @female10000mt.rail, region: @female10000mt.region } }
    end

    assert_redirected_to female10000mt_url(Female10000mt.last)
  end

  test "should show female10000mt" do
    get female10000mt_url(@female10000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female10000mt_url(@female10000mt)
    assert_response :success
  end

  test "should update female10000mt" do
    patch female10000mt_url(@female10000mt), params: { female10000mt: { achievement: @female10000mt.achievement, an: @female10000mt.an, athlete: @female10000mt.athlete, club: @female10000mt.club, country: @female10000mt.country, female10000mtHead_id: @female10000mt.female10000mtHead_id, number: @female10000mt.number, place: @female10000mt.place, rail: @female10000mt.rail, region: @female10000mt.region } }
    assert_redirected_to female10000mt_url(@female10000mt)
  end

  test "should destroy female10000mt" do
    assert_difference('Female10000mt.count', -1) do
      delete female10000mt_url(@female10000mt)
    end

    assert_redirected_to female10000mts_url
  end
end
