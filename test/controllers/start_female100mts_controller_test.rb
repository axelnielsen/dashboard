require 'test_helper'

class StartFemale100mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female100mt = start_female100mts(:one)
  end

  test "should get index" do
    get start_female100mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female100mt_url
    assert_response :success
  end

  test "should create start_female100mt" do
    assert_difference('StartFemale100mt.count') do
      post start_female100mts_url, params: { start_female100mt: { achievement: @start_female100mt.achievement, an: @start_female100mt.an, athlete: @start_female100mt.athlete, club: @start_female100mt.club, country: @start_female100mt.country, female100mtsHead_id: @start_female100mt.female100mtsHead_id, number: @start_female100mt.number, place: @start_female100mt.place, rail: @start_female100mt.rail, region: @start_female100mt.region } }
    end

    assert_redirected_to start_female100mt_url(StartFemale100mt.last)
  end

  test "should show start_female100mt" do
    get start_female100mt_url(@start_female100mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female100mt_url(@start_female100mt)
    assert_response :success
  end

  test "should update start_female100mt" do
    patch start_female100mt_url(@start_female100mt), params: { start_female100mt: { achievement: @start_female100mt.achievement, an: @start_female100mt.an, athlete: @start_female100mt.athlete, club: @start_female100mt.club, country: @start_female100mt.country, female100mtsHead_id: @start_female100mt.female100mtsHead_id, number: @start_female100mt.number, place: @start_female100mt.place, rail: @start_female100mt.rail, region: @start_female100mt.region } }
    assert_redirected_to start_female100mt_url(@start_female100mt)
  end

  test "should destroy start_female100mt" do
    assert_difference('StartFemale100mt.count', -1) do
      delete start_female100mt_url(@start_female100mt)
    end

    assert_redirected_to start_female100mts_url
  end
end
