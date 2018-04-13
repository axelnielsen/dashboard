require 'test_helper'

class StartMale100mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male100mt = start_male100mts(:one)
  end

  test "should get index" do
    get start_male100mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male100mt_url
    assert_response :success
  end

  test "should create start_male100mt" do
    assert_difference('StartMale100mt.count') do
      post start_male100mts_url, params: { start_male100mt: { achievement: @start_male100mt.achievement, an: @start_male100mt.an, athlete: @start_male100mt.athlete, club: @start_male100mt.club, country: @start_male100mt.country, male100mtsHead_id: @start_male100mt.male100mtsHead_id, number: @start_male100mt.number, place: @start_male100mt.place, rail: @start_male100mt.rail, region: @start_male100mt.region } }
    end

    assert_redirected_to start_male100mt_url(StartMale100mt.last)
  end

  test "should show start_male100mt" do
    get start_male100mt_url(@start_male100mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male100mt_url(@start_male100mt)
    assert_response :success
  end

  test "should update start_male100mt" do
    patch start_male100mt_url(@start_male100mt), params: { start_male100mt: { achievement: @start_male100mt.achievement, an: @start_male100mt.an, athlete: @start_male100mt.athlete, club: @start_male100mt.club, country: @start_male100mt.country, male100mtsHead_id: @start_male100mt.male100mtsHead_id, number: @start_male100mt.number, place: @start_male100mt.place, rail: @start_male100mt.rail, region: @start_male100mt.region } }
    assert_redirected_to start_male100mt_url(@start_male100mt)
  end

  test "should destroy start_male100mt" do
    assert_difference('StartMale100mt.count', -1) do
      delete start_male100mt_url(@start_male100mt)
    end

    assert_redirected_to start_male100mts_url
  end
end
