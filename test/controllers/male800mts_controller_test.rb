require 'test_helper'

class Male800mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male800mt = male800mts(:one)
  end

  test "should get index" do
    get male800mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male800mt_url
    assert_response :success
  end

  test "should create male800mt" do
    assert_difference('Male800mt.count') do
      post male800mts_url, params: { male800mt: { achievement: @male800mt.achievement, an: @male800mt.an, athlete: @male800mt.athlete, club: @male800mt.club, country: @male800mt.country, male800mtHead_id: @male800mt.male800mtHead_id, number: @male800mt.number, place: @male800mt.place, rail: @male800mt.rail, region: @male800mt.region } }
    end

    assert_redirected_to male800mt_url(Male800mt.last)
  end

  test "should show male800mt" do
    get male800mt_url(@male800mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male800mt_url(@male800mt)
    assert_response :success
  end

  test "should update male800mt" do
    patch male800mt_url(@male800mt), params: { male800mt: { achievement: @male800mt.achievement, an: @male800mt.an, athlete: @male800mt.athlete, club: @male800mt.club, country: @male800mt.country, male800mtHead_id: @male800mt.male800mtHead_id, number: @male800mt.number, place: @male800mt.place, rail: @male800mt.rail, region: @male800mt.region } }
    assert_redirected_to male800mt_url(@male800mt)
  end

  test "should destroy male800mt" do
    assert_difference('Male800mt.count', -1) do
      delete male800mt_url(@male800mt)
    end

    assert_redirected_to male800mts_url
  end
end
