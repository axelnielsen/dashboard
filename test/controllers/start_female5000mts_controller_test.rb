require 'test_helper'

class StartFemale5000mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female5000mt = start_female5000mts(:one)
  end

  test "should get index" do
    get start_female5000mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female5000mt_url
    assert_response :success
  end

  test "should create start_female5000mt" do
    assert_difference('StartFemale5000mt.count') do
      post start_female5000mts_url, params: { start_female5000mt: { achievement: @start_female5000mt.achievement, an: @start_female5000mt.an, athlete: @start_female5000mt.athlete, club: @start_female5000mt.club, country: @start_female5000mt.country, female5000mtStart_id: @start_female5000mt.female5000mtStart_id, number: @start_female5000mt.number, place: @start_female5000mt.place, rail: @start_female5000mt.rail, region: @start_female5000mt.region } }
    end

    assert_redirected_to start_female5000mt_url(StartFemale5000mt.last)
  end

  test "should show start_female5000mt" do
    get start_female5000mt_url(@start_female5000mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female5000mt_url(@start_female5000mt)
    assert_response :success
  end

  test "should update start_female5000mt" do
    patch start_female5000mt_url(@start_female5000mt), params: { start_female5000mt: { achievement: @start_female5000mt.achievement, an: @start_female5000mt.an, athlete: @start_female5000mt.athlete, club: @start_female5000mt.club, country: @start_female5000mt.country, female5000mtStart_id: @start_female5000mt.female5000mtStart_id, number: @start_female5000mt.number, place: @start_female5000mt.place, rail: @start_female5000mt.rail, region: @start_female5000mt.region } }
    assert_redirected_to start_female5000mt_url(@start_female5000mt)
  end

  test "should destroy start_female5000mt" do
    assert_difference('StartFemale5000mt.count', -1) do
      delete start_female5000mt_url(@start_female5000mt)
    end

    assert_redirected_to start_female5000mts_url
  end
end
