require 'test_helper'

class Male20000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male20000mt = male20000mts(:one)
  end

  test "should get index" do
    get male20000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male20000mt_url
    assert_response :success
  end

  test "should create male20000mt" do
    assert_difference('Male20000mt.count') do
      post male20000mts_url, params: { male20000mt: { achievement: @male20000mt.achievement, an: @male20000mt.an, athlete: @male20000mt.athlete, club: @male20000mt.club, country: @male20000mt.country, male20000mtHead_id: @male20000mt.male20000mtHead_id, number: @male20000mt.number, place: @male20000mt.place, rail: @male20000mt.rail, region: @male20000mt.region } }
    end

    assert_redirected_to male20000mt_url(Male20000mt.last)
  end

  test "should show male20000mt" do
    get male20000mt_url(@male20000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male20000mt_url(@male20000mt)
    assert_response :success
  end

  test "should update male20000mt" do
    patch male20000mt_url(@male20000mt), params: { male20000mt: { achievement: @male20000mt.achievement, an: @male20000mt.an, athlete: @male20000mt.athlete, club: @male20000mt.club, country: @male20000mt.country, male20000mtHead_id: @male20000mt.male20000mtHead_id, number: @male20000mt.number, place: @male20000mt.place, rail: @male20000mt.rail, region: @male20000mt.region } }
    assert_redirected_to male20000mt_url(@male20000mt)
  end

  test "should destroy male20000mt" do
    assert_difference('Male20000mt.count', -1) do
      delete male20000mt_url(@male20000mt)
    end

    assert_redirected_to male20000mts_url
  end
end
