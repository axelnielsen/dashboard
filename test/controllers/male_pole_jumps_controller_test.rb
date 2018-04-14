require 'test_helper'

class MalePoleJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_pole_jump = male_pole_jumps(:one)
  end

  test "should get index" do
    get male_pole_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_male_pole_jump_url
    assert_response :success
  end

  test "should create male_pole_jump" do
    assert_difference('MalePoleJump.count') do
      post male_pole_jumps_url, params: { male_pole_jump: { achievement: @male_pole_jump.achievement, an: @male_pole_jump.an, athlete: @male_pole_jump.athlete, club: @male_pole_jump.club, country: @male_pole_jump.country, malepolejumpsHead_id: @male_pole_jump.malepolejumpsHead_id, number: @male_pole_jump.number, place: @male_pole_jump.place, rail: @male_pole_jump.rail, region: @male_pole_jump.region } }
    end

    assert_redirected_to male_pole_jump_url(MalePoleJump.last)
  end

  test "should show male_pole_jump" do
    get male_pole_jump_url(@male_pole_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_pole_jump_url(@male_pole_jump)
    assert_response :success
  end

  test "should update male_pole_jump" do
    patch male_pole_jump_url(@male_pole_jump), params: { male_pole_jump: { achievement: @male_pole_jump.achievement, an: @male_pole_jump.an, athlete: @male_pole_jump.athlete, club: @male_pole_jump.club, country: @male_pole_jump.country, malepolejumpsHead_id: @male_pole_jump.malepolejumpsHead_id, number: @male_pole_jump.number, place: @male_pole_jump.place, rail: @male_pole_jump.rail, region: @male_pole_jump.region } }
    assert_redirected_to male_pole_jump_url(@male_pole_jump)
  end

  test "should destroy male_pole_jump" do
    assert_difference('MalePoleJump.count', -1) do
      delete male_pole_jump_url(@male_pole_jump)
    end

    assert_redirected_to male_pole_jumps_url
  end
end
