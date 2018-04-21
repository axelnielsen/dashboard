require 'test_helper'

class Male3000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male3000mt = male3000mts(:one)
  end

  test "should get index" do
    get male3000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male3000mt_url
    assert_response :success
  end

  test "should create male3000mt" do
    assert_difference('Male3000mt.count') do
      post male3000mts_url, params: { male3000mt: { achievement: @male3000mt.achievement, an: @male3000mt.an, athlete: @male3000mt.athlete, club: @male3000mt.club, country: @male3000mt.country, male3000mtHead_id: @male3000mt.male3000mtHead_id, number: @male3000mt.number, place: @male3000mt.place, rail: @male3000mt.rail, region: @male3000mt.region } }
    end

    assert_redirected_to male3000mt_url(Male3000mt.last)
  end

  test "should show male3000mt" do
    get male3000mt_url(@male3000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male3000mt_url(@male3000mt)
    assert_response :success
  end

  test "should update male3000mt" do
    patch male3000mt_url(@male3000mt), params: { male3000mt: { achievement: @male3000mt.achievement, an: @male3000mt.an, athlete: @male3000mt.athlete, club: @male3000mt.club, country: @male3000mt.country, male3000mtHead_id: @male3000mt.male3000mtHead_id, number: @male3000mt.number, place: @male3000mt.place, rail: @male3000mt.rail, region: @male3000mt.region } }
    assert_redirected_to male3000mt_url(@male3000mt)
  end

  test "should destroy male3000mt" do
    assert_difference('Male3000mt.count', -1) do
      delete male3000mt_url(@male3000mt)
    end

    assert_redirected_to male3000mts_url
  end
end
