require 'test_helper'

class StartFemale3000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female3000mt = start_female3000mts(:one)
  end

  test "should get index" do
    get start_female3000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female3000mt_url
    assert_response :success
  end

  test "should create start_female3000mt" do
    assert_difference('StartFemale3000mt.count') do
      post start_female3000mts_url, params: { start_female3000mt: { achievement: @start_female3000mt.achievement, an: @start_female3000mt.an, athlete: @start_female3000mt.athlete, club: @start_female3000mt.club, country: @start_female3000mt.country, female3000mtStart_id: @start_female3000mt.female3000mtStart_id, number: @start_female3000mt.number, place: @start_female3000mt.place, rail: @start_female3000mt.rail, region: @start_female3000mt.region } }
    end

    assert_redirected_to start_female3000mt_url(StartFemale3000mt.last)
  end

  test "should show start_female3000mt" do
    get start_female3000mt_url(@start_female3000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female3000mt_url(@start_female3000mt)
    assert_response :success
  end

  test "should update start_female3000mt" do
    patch start_female3000mt_url(@start_female3000mt), params: { start_female3000mt: { achievement: @start_female3000mt.achievement, an: @start_female3000mt.an, athlete: @start_female3000mt.athlete, club: @start_female3000mt.club, country: @start_female3000mt.country, female3000mtStart_id: @start_female3000mt.female3000mtStart_id, number: @start_female3000mt.number, place: @start_female3000mt.place, rail: @start_female3000mt.rail, region: @start_female3000mt.region } }
    assert_redirected_to start_female3000mt_url(@start_female3000mt)
  end

  test "should destroy start_female3000mt" do
    assert_difference('StartFemale3000mt.count', -1) do
      delete start_female3000mt_url(@start_female3000mt)
    end

    assert_redirected_to start_female3000mts_url
  end
end
