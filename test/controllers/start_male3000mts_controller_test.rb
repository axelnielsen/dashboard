require 'test_helper'

class StartMale3000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male3000mt = start_male3000mts(:one)
  end

  test "should get index" do
    get start_male3000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male3000mt_url
    assert_response :success
  end

  test "should create start_male3000mt" do
    assert_difference('StartMale3000mt.count') do
      post start_male3000mts_url, params: { start_male3000mt: { achievement: @start_male3000mt.achievement, an: @start_male3000mt.an, athlete: @start_male3000mt.athlete, club: @start_male3000mt.club, country: @start_male3000mt.country, male3000mtStart_id: @start_male3000mt.male3000mtStart_id, number: @start_male3000mt.number, place: @start_male3000mt.place, rail: @start_male3000mt.rail, region: @start_male3000mt.region } }
    end

    assert_redirected_to start_male3000mt_url(StartMale3000mt.last)
  end

  test "should show start_male3000mt" do
    get start_male3000mt_url(@start_male3000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male3000mt_url(@start_male3000mt)
    assert_response :success
  end

  test "should update start_male3000mt" do
    patch start_male3000mt_url(@start_male3000mt), params: { start_male3000mt: { achievement: @start_male3000mt.achievement, an: @start_male3000mt.an, athlete: @start_male3000mt.athlete, club: @start_male3000mt.club, country: @start_male3000mt.country, male3000mtStart_id: @start_male3000mt.male3000mtStart_id, number: @start_male3000mt.number, place: @start_male3000mt.place, rail: @start_male3000mt.rail, region: @start_male3000mt.region } }
    assert_redirected_to start_male3000mt_url(@start_male3000mt)
  end

  test "should destroy start_male3000mt" do
    assert_difference('StartMale3000mt.count', -1) do
      delete start_male3000mt_url(@start_male3000mt)
    end

    assert_redirected_to start_male3000mts_url
  end
end
