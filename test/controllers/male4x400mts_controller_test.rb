require 'test_helper'

class Male4x400mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male4x400mt = male4x400mts(:one)
  end

  test "should get index" do
    get male4x400mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male4x400mt_url
    assert_response :success
  end

  test "should create male4x400mt" do
    assert_difference('Male4x400mt.count') do
      post male4x400mts_url, params: { male4x400mt: { achievement: @male4x400mt.achievement, an: @male4x400mt.an, athlete: @male4x400mt.athlete, club: @male4x400mt.club, country: @male4x400mt.country, male4x400mtHead_id: @male4x400mt.male4x400mtHead_id, number: @male4x400mt.number, place: @male4x400mt.place, rail: @male4x400mt.rail, region: @male4x400mt.region } }
    end

    assert_redirected_to male4x400mt_url(Male4x400mt.last)
  end

  test "should show male4x400mt" do
    get male4x400mt_url(@male4x400mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male4x400mt_url(@male4x400mt)
    assert_response :success
  end

  test "should update male4x400mt" do
    patch male4x400mt_url(@male4x400mt), params: { male4x400mt: { achievement: @male4x400mt.achievement, an: @male4x400mt.an, athlete: @male4x400mt.athlete, club: @male4x400mt.club, country: @male4x400mt.country, male4x400mtHead_id: @male4x400mt.male4x400mtHead_id, number: @male4x400mt.number, place: @male4x400mt.place, rail: @male4x400mt.rail, region: @male4x400mt.region } }
    assert_redirected_to male4x400mt_url(@male4x400mt)
  end

  test "should destroy male4x400mt" do
    assert_difference('Male4x400mt.count', -1) do
      delete male4x400mt_url(@male4x400mt)
    end

    assert_redirected_to male4x400mts_url
  end
end
