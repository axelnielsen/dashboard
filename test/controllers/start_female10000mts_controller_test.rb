require 'test_helper'

class StartFemale10000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female10000mt = start_female10000mts(:one)
  end

  test "should get index" do
    get start_female10000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female10000mt_url
    assert_response :success
  end

  test "should create start_female10000mt" do
    assert_difference('StartFemale10000mt.count') do
      post start_female10000mts_url, params: { start_female10000mt: { achievement: @start_female10000mt.achievement, an: @start_female10000mt.an, athlete: @start_female10000mt.athlete, club: @start_female10000mt.club, country: @start_female10000mt.country, female10000mtStart_id: @start_female10000mt.female10000mtStart_id, number: @start_female10000mt.number, place: @start_female10000mt.place, rail: @start_female10000mt.rail, region: @start_female10000mt.region } }
    end

    assert_redirected_to start_female10000mt_url(StartFemale10000mt.last)
  end

  test "should show start_female10000mt" do
    get start_female10000mt_url(@start_female10000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female10000mt_url(@start_female10000mt)
    assert_response :success
  end

  test "should update start_female10000mt" do
    patch start_female10000mt_url(@start_female10000mt), params: { start_female10000mt: { achievement: @start_female10000mt.achievement, an: @start_female10000mt.an, athlete: @start_female10000mt.athlete, club: @start_female10000mt.club, country: @start_female10000mt.country, female10000mtStart_id: @start_female10000mt.female10000mtStart_id, number: @start_female10000mt.number, place: @start_female10000mt.place, rail: @start_female10000mt.rail, region: @start_female10000mt.region } }
    assert_redirected_to start_female10000mt_url(@start_female10000mt)
  end

  test "should destroy start_female10000mt" do
    assert_difference('StartFemale10000mt.count', -1) do
      delete start_female10000mt_url(@start_female10000mt)
    end

    assert_redirected_to start_female10000mts_url
  end
end
