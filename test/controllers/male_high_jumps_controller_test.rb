require 'test_helper'

class MaleHighJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_high_jump = male_high_jumps(:one)
  end

  test "should get index" do
    get male_high_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_male_high_jump_url
    assert_response :success
  end

  test "should create male_high_jump" do
    assert_difference('MaleHighJump.count') do
      post male_high_jumps_url, params: { male_high_jump: { achievement: @male_high_jump.achievement, an: @male_high_jump.an, club: @male_high_jump.club, country: @male_high_jump.country, fift: @male_high_jump.fift, first: @male_high_jump.first, fourth: @male_high_jump.fourth, name: @male_high_jump.name, number: @male_high_jump.number, op: @male_high_jump.op, place: @male_high_jump.place, reg: @male_high_jump.reg, seconnd: @male_high_jump.seconnd, sixth: @male_high_jump.sixth, third: @male_high_jump.third, vvFifth: @male_high_jump.vvFifth, vvFirst: @male_high_jump.vvFirst, vvFourth: @male_high_jump.vvFourth, vvSecond: @male_high_jump.vvSecond, vvSixth: @male_high_jump.vvSixth, vvThird: @male_high_jump.vvThird } }
    end

    assert_redirected_to male_high_jump_url(MaleHighJump.last)
  end

  test "should show male_high_jump" do
    get male_high_jump_url(@male_high_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_high_jump_url(@male_high_jump)
    assert_response :success
  end

  test "should update male_high_jump" do
    patch male_high_jump_url(@male_high_jump), params: { male_high_jump: { achievement: @male_high_jump.achievement, an: @male_high_jump.an, club: @male_high_jump.club, country: @male_high_jump.country, fift: @male_high_jump.fift, first: @male_high_jump.first, fourth: @male_high_jump.fourth, name: @male_high_jump.name, number: @male_high_jump.number, op: @male_high_jump.op, place: @male_high_jump.place, reg: @male_high_jump.reg, seconnd: @male_high_jump.seconnd, sixth: @male_high_jump.sixth, third: @male_high_jump.third, vvFifth: @male_high_jump.vvFifth, vvFirst: @male_high_jump.vvFirst, vvFourth: @male_high_jump.vvFourth, vvSecond: @male_high_jump.vvSecond, vvSixth: @male_high_jump.vvSixth, vvThird: @male_high_jump.vvThird } }
    assert_redirected_to male_high_jump_url(@male_high_jump)
  end

  test "should destroy male_high_jump" do
    assert_difference('MaleHighJump.count', -1) do
      delete male_high_jump_url(@male_high_jump)
    end

    assert_redirected_to male_high_jumps_url
  end
end
