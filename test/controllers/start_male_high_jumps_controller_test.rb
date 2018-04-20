require 'test_helper'

class StartMaleHighJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male_high_jump = start_male_high_jumps(:one)
  end

  test "should get index" do
    get start_male_high_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male_high_jump_url
    assert_response :success
  end

  test "should create start_male_high_jump" do
    assert_difference('StartMaleHighJump.count') do
      post start_male_high_jumps_url, params: { start_male_high_jump: { achievement: @start_male_high_jump.achievement, an: @start_male_high_jump.an, athlete: @start_male_high_jump.athlete, club: @start_male_high_jump.club, country: @start_male_high_jump.country, malehighjumpStart_id: @start_male_high_jump.malehighjumpStart_id, number: @start_male_high_jump.number, place: @start_male_high_jump.place, rail: @start_male_high_jump.rail, region: @start_male_high_jump.region } }
    end

    assert_redirected_to start_male_high_jump_url(StartMaleHighJump.last)
  end

  test "should show start_male_high_jump" do
    get start_male_high_jump_url(@start_male_high_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male_high_jump_url(@start_male_high_jump)
    assert_response :success
  end

  test "should update start_male_high_jump" do
    patch start_male_high_jump_url(@start_male_high_jump), params: { start_male_high_jump: { achievement: @start_male_high_jump.achievement, an: @start_male_high_jump.an, athlete: @start_male_high_jump.athlete, club: @start_male_high_jump.club, country: @start_male_high_jump.country, malehighjumpStart_id: @start_male_high_jump.malehighjumpStart_id, number: @start_male_high_jump.number, place: @start_male_high_jump.place, rail: @start_male_high_jump.rail, region: @start_male_high_jump.region } }
    assert_redirected_to start_male_high_jump_url(@start_male_high_jump)
  end

  test "should destroy start_male_high_jump" do
    assert_difference('StartMaleHighJump.count', -1) do
      delete start_male_high_jump_url(@start_male_high_jump)
    end

    assert_redirected_to start_male_high_jumps_url
  end
end
