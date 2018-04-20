require 'test_helper'

class StartFemaleHighJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female_high_jump = start_female_high_jumps(:one)
  end

  test "should get index" do
    get start_female_high_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female_high_jump_url
    assert_response :success
  end

  test "should create start_female_high_jump" do
    assert_difference('StartFemaleHighJump.count') do
      post start_female_high_jumps_url, params: { start_female_high_jump: { achievement: @start_female_high_jump.achievement, an: @start_female_high_jump.an, athlete: @start_female_high_jump.athlete, club: @start_female_high_jump.club, country: @start_female_high_jump.country, femalehighjumpStart_id: @start_female_high_jump.femalehighjumpStart_id, number: @start_female_high_jump.number, place: @start_female_high_jump.place, rail: @start_female_high_jump.rail, region: @start_female_high_jump.region } }
    end

    assert_redirected_to start_female_high_jump_url(StartFemaleHighJump.last)
  end

  test "should show start_female_high_jump" do
    get start_female_high_jump_url(@start_female_high_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female_high_jump_url(@start_female_high_jump)
    assert_response :success
  end

  test "should update start_female_high_jump" do
    patch start_female_high_jump_url(@start_female_high_jump), params: { start_female_high_jump: { achievement: @start_female_high_jump.achievement, an: @start_female_high_jump.an, athlete: @start_female_high_jump.athlete, club: @start_female_high_jump.club, country: @start_female_high_jump.country, femalehighjumpStart_id: @start_female_high_jump.femalehighjumpStart_id, number: @start_female_high_jump.number, place: @start_female_high_jump.place, rail: @start_female_high_jump.rail, region: @start_female_high_jump.region } }
    assert_redirected_to start_female_high_jump_url(@start_female_high_jump)
  end

  test "should destroy start_female_high_jump" do
    assert_difference('StartFemaleHighJump.count', -1) do
      delete start_female_high_jump_url(@start_female_high_jump)
    end

    assert_redirected_to start_female_high_jumps_url
  end
end
