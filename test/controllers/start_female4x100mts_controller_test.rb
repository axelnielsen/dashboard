require 'test_helper'

class StartFemale4x100mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female4x100mt = start_female4x100mts(:one)
  end

  test "should get index" do
    get start_female4x100mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female4x100mt_url
    assert_response :success
  end

  test "should create start_female4x100mt" do
    assert_difference('StartFemale4x100mt.count') do
      post start_female4x100mts_url, params: { start_female4x100mt: { achievement: @start_female4x100mt.achievement, an: @start_female4x100mt.an, athlete: @start_female4x100mt.athlete, club: @start_female4x100mt.club, country: @start_female4x100mt.country, female4x100mtStart_id: @start_female4x100mt.female4x100mtStart_id, number: @start_female4x100mt.number, place: @start_female4x100mt.place, rail: @start_female4x100mt.rail, region: @start_female4x100mt.region } }
    end

    assert_redirected_to start_female4x100mt_url(StartFemale4x100mt.last)
  end

  test "should show start_female4x100mt" do
    get start_female4x100mt_url(@start_female4x100mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female4x100mt_url(@start_female4x100mt)
    assert_response :success
  end

  test "should update start_female4x100mt" do
    patch start_female4x100mt_url(@start_female4x100mt), params: { start_female4x100mt: { achievement: @start_female4x100mt.achievement, an: @start_female4x100mt.an, athlete: @start_female4x100mt.athlete, club: @start_female4x100mt.club, country: @start_female4x100mt.country, female4x100mtStart_id: @start_female4x100mt.female4x100mtStart_id, number: @start_female4x100mt.number, place: @start_female4x100mt.place, rail: @start_female4x100mt.rail, region: @start_female4x100mt.region } }
    assert_redirected_to start_female4x100mt_url(@start_female4x100mt)
  end

  test "should destroy start_female4x100mt" do
    assert_difference('StartFemale4x100mt.count', -1) do
      delete start_female4x100mt_url(@start_female4x100mt)
    end

    assert_redirected_to start_female4x100mts_url
  end
end
