require 'test_helper'

class StartFemalePoleJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female_pole_jump = start_female_pole_jumps(:one)
  end

  test "should get index" do
    get start_female_pole_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female_pole_jump_url
    assert_response :success
  end

  test "should create start_female_pole_jump" do
    assert_difference('StartFemalePoleJump.count') do
      post start_female_pole_jumps_url, params: { start_female_pole_jump: { achievement: @start_female_pole_jump.achievement, an: @start_female_pole_jump.an, athlete: @start_female_pole_jump.athlete, club: @start_female_pole_jump.club, country: @start_female_pole_jump.country, femalepolejumpStart_id: @start_female_pole_jump.femalepolejumpStart_id, number: @start_female_pole_jump.number, place: @start_female_pole_jump.place, rail: @start_female_pole_jump.rail, region: @start_female_pole_jump.region } }
    end

    assert_redirected_to start_female_pole_jump_url(StartFemalePoleJump.last)
  end

  test "should show start_female_pole_jump" do
    get start_female_pole_jump_url(@start_female_pole_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female_pole_jump_url(@start_female_pole_jump)
    assert_response :success
  end

  test "should update start_female_pole_jump" do
    patch start_female_pole_jump_url(@start_female_pole_jump), params: { start_female_pole_jump: { achievement: @start_female_pole_jump.achievement, an: @start_female_pole_jump.an, athlete: @start_female_pole_jump.athlete, club: @start_female_pole_jump.club, country: @start_female_pole_jump.country, femalepolejumpStart_id: @start_female_pole_jump.femalepolejumpStart_id, number: @start_female_pole_jump.number, place: @start_female_pole_jump.place, rail: @start_female_pole_jump.rail, region: @start_female_pole_jump.region } }
    assert_redirected_to start_female_pole_jump_url(@start_female_pole_jump)
  end

  test "should destroy start_female_pole_jump" do
    assert_difference('StartFemalePoleJump.count', -1) do
      delete start_female_pole_jump_url(@start_female_pole_jump)
    end

    assert_redirected_to start_female_pole_jumps_url
  end
end
