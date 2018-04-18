require 'test_helper'

class Male8x50mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male8x50mt = male8x50mts(:one)
  end

  test "should get index" do
    get male8x50mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male8x50mt_url
    assert_response :success
  end

  test "should create male8x50mt" do
    assert_difference('Male8x50mt.count') do
      post male8x50mts_url, params: { male8x50mt: { achievement: @male8x50mt.achievement, an: @male8x50mt.an, athlete: @male8x50mt.athlete, club: @male8x50mt.club, country: @male8x50mt.country, male8x50mts_id: @male8x50mt.male8x50mts_id, number: @male8x50mt.number, place: @male8x50mt.place, rail: @male8x50mt.rail, region: @male8x50mt.region } }
    end

    assert_redirected_to male8x50mt_url(Male8x50mt.last)
  end

  test "should show male8x50mt" do
    get male8x50mt_url(@male8x50mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male8x50mt_url(@male8x50mt)
    assert_response :success
  end

  test "should update male8x50mt" do
    patch male8x50mt_url(@male8x50mt), params: { male8x50mt: { achievement: @male8x50mt.achievement, an: @male8x50mt.an, athlete: @male8x50mt.athlete, club: @male8x50mt.club, country: @male8x50mt.country, male8x50mts_id: @male8x50mt.male8x50mts_id, number: @male8x50mt.number, place: @male8x50mt.place, rail: @male8x50mt.rail, region: @male8x50mt.region } }
    assert_redirected_to male8x50mt_url(@male8x50mt)
  end

  test "should destroy male8x50mt" do
    assert_difference('Male8x50mt.count', -1) do
      delete male8x50mt_url(@male8x50mt)
    end

    assert_redirected_to male8x50mts_url
  end
end
