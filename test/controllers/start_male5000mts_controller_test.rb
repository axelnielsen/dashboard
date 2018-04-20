require 'test_helper'

class StartMale5000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male5000mt = start_male5000mts(:one)
  end

  test "should get index" do
    get start_male5000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male5000mt_url
    assert_response :success
  end

  test "should create start_male5000mt" do
    assert_difference('StartMale5000mt.count') do
      post start_male5000mts_url, params: { start_male5000mt: { achievement: @start_male5000mt.achievement, an: @start_male5000mt.an, athlete: @start_male5000mt.athlete, club: @start_male5000mt.club, country: @start_male5000mt.country, male5000mtStart_id: @start_male5000mt.male5000mtStart_id, number: @start_male5000mt.number, place: @start_male5000mt.place, rail: @start_male5000mt.rail, region: @start_male5000mt.region } }
    end

    assert_redirected_to start_male5000mt_url(StartMale5000mt.last)
  end

  test "should show start_male5000mt" do
    get start_male5000mt_url(@start_male5000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male5000mt_url(@start_male5000mt)
    assert_response :success
  end

  test "should update start_male5000mt" do
    patch start_male5000mt_url(@start_male5000mt), params: { start_male5000mt: { achievement: @start_male5000mt.achievement, an: @start_male5000mt.an, athlete: @start_male5000mt.athlete, club: @start_male5000mt.club, country: @start_male5000mt.country, male5000mtStart_id: @start_male5000mt.male5000mtStart_id, number: @start_male5000mt.number, place: @start_male5000mt.place, rail: @start_male5000mt.rail, region: @start_male5000mt.region } }
    assert_redirected_to start_male5000mt_url(@start_male5000mt)
  end

  test "should destroy start_male5000mt" do
    assert_difference('StartMale5000mt.count', -1) do
      delete start_male5000mt_url(@start_male5000mt)
    end

    assert_redirected_to start_male5000mts_url
  end
end
