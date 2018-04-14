require 'test_helper'

class MaleLongJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_long_jump = male_long_jumps(:one)
  end

  test "should get index" do
    get male_long_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_male_long_jump_url
    assert_response :success
  end

  test "should create male_long_jump" do
    assert_difference('MaleLongJump.count') do
      post male_long_jumps_url, params: { male_long_jump: { achievement: @male_long_jump.achievement, an: @male_long_jump.an, club: @male_long_jump.club, country: @male_long_jump.country, fift: @male_long_jump.fift, first: @male_long_jump.first, fourth: @male_long_jump.fourth, name: @male_long_jump.name, number: @male_long_jump.number, op: @male_long_jump.op, place: @male_long_jump.place, reg: @male_long_jump.reg, seconnd: @male_long_jump.seconnd, sixth: @male_long_jump.sixth, third: @male_long_jump.third, vvFifth: @male_long_jump.vvFifth, vvFirst: @male_long_jump.vvFirst, vvFourth: @male_long_jump.vvFourth, vvSecond: @male_long_jump.vvSecond, vvSixth: @male_long_jump.vvSixth, vvThird: @male_long_jump.vvThird } }
    end

    assert_redirected_to male_long_jump_url(MaleLongJump.last)
  end

  test "should show male_long_jump" do
    get male_long_jump_url(@male_long_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_long_jump_url(@male_long_jump)
    assert_response :success
  end

  test "should update male_long_jump" do
    patch male_long_jump_url(@male_long_jump), params: { male_long_jump: { achievement: @male_long_jump.achievement, an: @male_long_jump.an, club: @male_long_jump.club, country: @male_long_jump.country, fift: @male_long_jump.fift, first: @male_long_jump.first, fourth: @male_long_jump.fourth, name: @male_long_jump.name, number: @male_long_jump.number, op: @male_long_jump.op, place: @male_long_jump.place, reg: @male_long_jump.reg, seconnd: @male_long_jump.seconnd, sixth: @male_long_jump.sixth, third: @male_long_jump.third, vvFifth: @male_long_jump.vvFifth, vvFirst: @male_long_jump.vvFirst, vvFourth: @male_long_jump.vvFourth, vvSecond: @male_long_jump.vvSecond, vvSixth: @male_long_jump.vvSixth, vvThird: @male_long_jump.vvThird } }
    assert_redirected_to male_long_jump_url(@male_long_jump)
  end

  test "should destroy male_long_jump" do
    assert_difference('MaleLongJump.count', -1) do
      delete male_long_jump_url(@male_long_jump)
    end

    assert_redirected_to male_long_jumps_url
  end
end
