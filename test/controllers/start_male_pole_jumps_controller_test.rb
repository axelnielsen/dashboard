require 'test_helper'

class StartMalePoleJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male_pole_jump = start_male_pole_jumps(:one)
  end

  test "should get index" do
    get start_male_pole_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male_pole_jump_url
    assert_response :success
  end

  test "should create start_male_pole_jump" do
    assert_difference('StartMalePoleJump.count') do
      post start_male_pole_jumps_url, params: { start_male_pole_jump: { achievement: @start_male_pole_jump.achievement, an: @start_male_pole_jump.an, athlete: @start_male_pole_jump.athlete, club: @start_male_pole_jump.club, country: @start_male_pole_jump.country, malepolejumpStart_id: @start_male_pole_jump.malepolejumpStart_id, number: @start_male_pole_jump.number, place: @start_male_pole_jump.place, rail: @start_male_pole_jump.rail, region: @start_male_pole_jump.region } }
    end

    assert_redirected_to start_male_pole_jump_url(StartMalePoleJump.last)
  end

  test "should show start_male_pole_jump" do
    get start_male_pole_jump_url(@start_male_pole_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male_pole_jump_url(@start_male_pole_jump)
    assert_response :success
  end

  test "should update start_male_pole_jump" do
    patch start_male_pole_jump_url(@start_male_pole_jump), params: { start_male_pole_jump: { achievement: @start_male_pole_jump.achievement, an: @start_male_pole_jump.an, athlete: @start_male_pole_jump.athlete, club: @start_male_pole_jump.club, country: @start_male_pole_jump.country, malepolejumpStart_id: @start_male_pole_jump.malepolejumpStart_id, number: @start_male_pole_jump.number, place: @start_male_pole_jump.place, rail: @start_male_pole_jump.rail, region: @start_male_pole_jump.region } }
    assert_redirected_to start_male_pole_jump_url(@start_male_pole_jump)
  end

  test "should destroy start_male_pole_jump" do
    assert_difference('StartMalePoleJump.count', -1) do
      delete start_male_pole_jump_url(@start_male_pole_jump)
    end

    assert_redirected_to start_male_pole_jumps_url
  end
end
