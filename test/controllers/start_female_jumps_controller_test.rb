require 'test_helper'

class StartFemaleJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female_jump = start_female_jumps(:one)
  end

  test "should get index" do
    get start_female_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female_jump_url
    assert_response :success
  end

  test "should create start_female_jump" do
    assert_difference('StartFemaleJump.count') do
      post start_female_jumps_url, params: { start_female_jump: { achievement: @start_female_jump.achievement, an: @start_female_jump.an, athlete: @start_female_jump.athlete, club: @start_female_jump.club, country: @start_female_jump.country, femaleJumpHead_id: @start_female_jump.femaleJumpHead_id, number: @start_female_jump.number, place: @start_female_jump.place, rail: @start_female_jump.rail, region: @start_female_jump.region } }
    end

    assert_redirected_to start_female_jump_url(StartFemaleJump.last)
  end

  test "should show start_female_jump" do
    get start_female_jump_url(@start_female_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female_jump_url(@start_female_jump)
    assert_response :success
  end

  test "should update start_female_jump" do
    patch start_female_jump_url(@start_female_jump), params: { start_female_jump: { achievement: @start_female_jump.achievement, an: @start_female_jump.an, athlete: @start_female_jump.athlete, club: @start_female_jump.club, country: @start_female_jump.country, femaleJumpHead_id: @start_female_jump.femaleJumpHead_id, number: @start_female_jump.number, place: @start_female_jump.place, rail: @start_female_jump.rail, region: @start_female_jump.region } }
    assert_redirected_to start_female_jump_url(@start_female_jump)
  end

  test "should destroy start_female_jump" do
    assert_difference('StartFemaleJump.count', -1) do
      delete start_female_jump_url(@start_female_jump)
    end

    assert_redirected_to start_female_jumps_url
  end
end
