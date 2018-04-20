require 'test_helper'

class StartFemale8x50mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female8x50mt = start_female8x50mts(:one)
  end

  test "should get index" do
    get start_female8x50mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female8x50mt_url
    assert_response :success
  end

  test "should create start_female8x50mt" do
    assert_difference('StartFemale8x50mt.count') do
      post start_female8x50mts_url, params: { start_female8x50mt: { achievement: @start_female8x50mt.achievement, an: @start_female8x50mt.an, athlete: @start_female8x50mt.athlete, club: @start_female8x50mt.club, country: @start_female8x50mt.country, female8x50mtStart_id: @start_female8x50mt.female8x50mtStart_id, number: @start_female8x50mt.number, place: @start_female8x50mt.place, rail: @start_female8x50mt.rail, region: @start_female8x50mt.region } }
    end

    assert_redirected_to start_female8x50mt_url(StartFemale8x50mt.last)
  end

  test "should show start_female8x50mt" do
    get start_female8x50mt_url(@start_female8x50mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female8x50mt_url(@start_female8x50mt)
    assert_response :success
  end

  test "should update start_female8x50mt" do
    patch start_female8x50mt_url(@start_female8x50mt), params: { start_female8x50mt: { achievement: @start_female8x50mt.achievement, an: @start_female8x50mt.an, athlete: @start_female8x50mt.athlete, club: @start_female8x50mt.club, country: @start_female8x50mt.country, female8x50mtStart_id: @start_female8x50mt.female8x50mtStart_id, number: @start_female8x50mt.number, place: @start_female8x50mt.place, rail: @start_female8x50mt.rail, region: @start_female8x50mt.region } }
    assert_redirected_to start_female8x50mt_url(@start_female8x50mt)
  end

  test "should destroy start_female8x50mt" do
    assert_difference('StartFemale8x50mt.count', -1) do
      delete start_female8x50mt_url(@start_female8x50mt)
    end

    assert_redirected_to start_female8x50mts_url
  end
end
