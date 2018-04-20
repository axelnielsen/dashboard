require 'test_helper'

class StartMaleLongJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male_long_jump = start_male_long_jumps(:one)
  end

  test "should get index" do
    get start_male_long_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male_long_jump_url
    assert_response :success
  end

  test "should create start_male_long_jump" do
    assert_difference('StartMaleLongJump.count') do
      post start_male_long_jumps_url, params: { start_male_long_jump: { achievement: @start_male_long_jump.achievement, an: @start_male_long_jump.an, athlete: @start_male_long_jump.athlete, club: @start_male_long_jump.club, country: @start_male_long_jump.country, malelongjumpStart_id: @start_male_long_jump.malelongjumpStart_id, number: @start_male_long_jump.number, place: @start_male_long_jump.place, rail: @start_male_long_jump.rail, region: @start_male_long_jump.region } }
    end

    assert_redirected_to start_male_long_jump_url(StartMaleLongJump.last)
  end

  test "should show start_male_long_jump" do
    get start_male_long_jump_url(@start_male_long_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male_long_jump_url(@start_male_long_jump)
    assert_response :success
  end

  test "should update start_male_long_jump" do
    patch start_male_long_jump_url(@start_male_long_jump), params: { start_male_long_jump: { achievement: @start_male_long_jump.achievement, an: @start_male_long_jump.an, athlete: @start_male_long_jump.athlete, club: @start_male_long_jump.club, country: @start_male_long_jump.country, malelongjumpStart_id: @start_male_long_jump.malelongjumpStart_id, number: @start_male_long_jump.number, place: @start_male_long_jump.place, rail: @start_male_long_jump.rail, region: @start_male_long_jump.region } }
    assert_redirected_to start_male_long_jump_url(@start_male_long_jump)
  end

  test "should destroy start_male_long_jump" do
    assert_difference('StartMaleLongJump.count', -1) do
      delete start_male_long_jump_url(@start_male_long_jump)
    end

    assert_redirected_to start_male_long_jumps_url
  end
end
