require 'test_helper'

class StartMale20000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male20000mt = start_male20000mts(:one)
  end

  test "should get index" do
    get start_male20000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male20000mt_url
    assert_response :success
  end

  test "should create start_male20000mt" do
    assert_difference('StartMale20000mt.count') do
      post start_male20000mts_url, params: { start_male20000mt: { achievement: @start_male20000mt.achievement, an: @start_male20000mt.an, athlete: @start_male20000mt.athlete, club: @start_male20000mt.club, country: @start_male20000mt.country, male20000mtStart_id: @start_male20000mt.male20000mtStart_id, number: @start_male20000mt.number, place: @start_male20000mt.place, rail: @start_male20000mt.rail, region: @start_male20000mt.region } }
    end

    assert_redirected_to start_male20000mt_url(StartMale20000mt.last)
  end

  test "should show start_male20000mt" do
    get start_male20000mt_url(@start_male20000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male20000mt_url(@start_male20000mt)
    assert_response :success
  end

  test "should update start_male20000mt" do
    patch start_male20000mt_url(@start_male20000mt), params: { start_male20000mt: { achievement: @start_male20000mt.achievement, an: @start_male20000mt.an, athlete: @start_male20000mt.athlete, club: @start_male20000mt.club, country: @start_male20000mt.country, male20000mtStart_id: @start_male20000mt.male20000mtStart_id, number: @start_male20000mt.number, place: @start_male20000mt.place, rail: @start_male20000mt.rail, region: @start_male20000mt.region } }
    assert_redirected_to start_male20000mt_url(@start_male20000mt)
  end

  test "should destroy start_male20000mt" do
    assert_difference('StartMale20000mt.count', -1) do
      delete start_male20000mt_url(@start_male20000mt)
    end

    assert_redirected_to start_male20000mts_url
  end
end
