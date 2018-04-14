require 'test_helper'

class Male100mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male100mt = male100mts(:one)
  end

  test "should get index" do
    get male100mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male100mt_url
    assert_response :success
  end

  test "should create male100mt" do
    assert_difference('Male100mt.count') do
      post male100mts_url, params: { male100mt: { achievement: @male100mt.achievement, an: @male100mt.an, athlete: @male100mt.athlete, club: @male100mt.club, country: @male100mt.country, male100mtsHead_id: @male100mt.male100mtsHead_id, number: @male100mt.number, place: @male100mt.place, rail: @male100mt.rail, region: @male100mt.region } }
    end

    assert_redirected_to male100mt_url(Male100mt.last)
  end

  test "should show male100mt" do
    get male100mt_url(@male100mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male100mt_url(@male100mt)
    assert_response :success
  end

  test "should update male100mt" do
    patch male100mt_url(@male100mt), params: { male100mt: { achievement: @male100mt.achievement, an: @male100mt.an, athlete: @male100mt.athlete, club: @male100mt.club, country: @male100mt.country, male100mtsHead_id: @male100mt.male100mtsHead_id, number: @male100mt.number, place: @male100mt.place, rail: @male100mt.rail, region: @male100mt.region } }
    assert_redirected_to male100mt_url(@male100mt)
  end

  test "should destroy male100mt" do
    assert_difference('Male100mt.count', -1) do
      delete male100mt_url(@male100mt)
    end

    assert_redirected_to male100mts_url
  end
end
