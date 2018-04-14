require 'test_helper'

class Male5000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male5000mt = male5000mts(:one)
  end

  test "should get index" do
    get male5000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male5000mt_url
    assert_response :success
  end

  test "should create male5000mt" do
    assert_difference('Male5000mt.count') do
      post male5000mts_url, params: { male5000mt: { achievement: @male5000mt.achievement, an: @male5000mt.an, athlete: @male5000mt.athlete, club: @male5000mt.club, country: @male5000mt.country, male5000mtsHead_id: @male5000mt.male5000mtsHead_id, number: @male5000mt.number, place: @male5000mt.place, rail: @male5000mt.rail, region: @male5000mt.region } }
    end

    assert_redirected_to male5000mt_url(Male5000mt.last)
  end

  test "should show male5000mt" do
    get male5000mt_url(@male5000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male5000mt_url(@male5000mt)
    assert_response :success
  end

  test "should update male5000mt" do
    patch male5000mt_url(@male5000mt), params: { male5000mt: { achievement: @male5000mt.achievement, an: @male5000mt.an, athlete: @male5000mt.athlete, club: @male5000mt.club, country: @male5000mt.country, male5000mtsHead_id: @male5000mt.male5000mtsHead_id, number: @male5000mt.number, place: @male5000mt.place, rail: @male5000mt.rail, region: @male5000mt.region } }
    assert_redirected_to male5000mt_url(@male5000mt)
  end

  test "should destroy male5000mt" do
    assert_difference('Male5000mt.count', -1) do
      delete male5000mt_url(@male5000mt)
    end

    assert_redirected_to male5000mts_url
  end
end
