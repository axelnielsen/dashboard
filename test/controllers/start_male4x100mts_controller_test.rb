require 'test_helper'

class StartMale4x100mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male4x100mt = start_male4x100mts(:one)
  end

  test "should get index" do
    get start_male4x100mts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male4x100mt_url
    assert_response :success
  end

  test "should create start_male4x100mt" do
    assert_difference('StartMale4x100mt.count') do
      post start_male4x100mts_url, params: { start_male4x100mt: { achievement: @start_male4x100mt.achievement, an: @start_male4x100mt.an, athlete: @start_male4x100mt.athlete, club: @start_male4x100mt.club, country: @start_male4x100mt.country, male4x100mtStart_id: @start_male4x100mt.male4x100mtStart_id, number: @start_male4x100mt.number, place: @start_male4x100mt.place, rail: @start_male4x100mt.rail, region: @start_male4x100mt.region } }
    end

    assert_redirected_to start_male4x100mt_url(StartMale4x100mt.last)
  end

  test "should show start_male4x100mt" do
    get start_male4x100mt_url(@start_male4x100mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male4x100mt_url(@start_male4x100mt)
    assert_response :success
  end

  test "should update start_male4x100mt" do
    patch start_male4x100mt_url(@start_male4x100mt), params: { start_male4x100mt: { achievement: @start_male4x100mt.achievement, an: @start_male4x100mt.an, athlete: @start_male4x100mt.athlete, club: @start_male4x100mt.club, country: @start_male4x100mt.country, male4x100mtStart_id: @start_male4x100mt.male4x100mtStart_id, number: @start_male4x100mt.number, place: @start_male4x100mt.place, rail: @start_male4x100mt.rail, region: @start_male4x100mt.region } }
    assert_redirected_to start_male4x100mt_url(@start_male4x100mt)
  end

  test "should destroy start_male4x100mt" do
    assert_difference('StartMale4x100mt.count', -1) do
      delete start_male4x100mt_url(@start_male4x100mt)
    end

    assert_redirected_to start_male4x100mts_url
  end
end
