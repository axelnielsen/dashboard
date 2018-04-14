require 'test_helper'

class MaleTripleJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_triple_jump = male_triple_jumps(:one)
  end

  test "should get index" do
    get male_triple_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_male_triple_jump_url
    assert_response :success
  end

  test "should create male_triple_jump" do
    assert_difference('MaleTripleJump.count') do
      post male_triple_jumps_url, params: { male_triple_jump: { achievement: @male_triple_jump.achievement, an: @male_triple_jump.an, club: @male_triple_jump.club, country: @male_triple_jump.country, fift: @male_triple_jump.fift, first: @male_triple_jump.first, fourth: @male_triple_jump.fourth, name: @male_triple_jump.name, number: @male_triple_jump.number, op: @male_triple_jump.op, place: @male_triple_jump.place, reg: @male_triple_jump.reg, seconnd: @male_triple_jump.seconnd, sixth: @male_triple_jump.sixth, third: @male_triple_jump.third, vvFifth: @male_triple_jump.vvFifth, vvFirst: @male_triple_jump.vvFirst, vvFourth: @male_triple_jump.vvFourth, vvSecond: @male_triple_jump.vvSecond, vvSixth: @male_triple_jump.vvSixth, vvThird: @male_triple_jump.vvThird } }
    end

    assert_redirected_to male_triple_jump_url(MaleTripleJump.last)
  end

  test "should show male_triple_jump" do
    get male_triple_jump_url(@male_triple_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_triple_jump_url(@male_triple_jump)
    assert_response :success
  end

  test "should update male_triple_jump" do
    patch male_triple_jump_url(@male_triple_jump), params: { male_triple_jump: { achievement: @male_triple_jump.achievement, an: @male_triple_jump.an, club: @male_triple_jump.club, country: @male_triple_jump.country, fift: @male_triple_jump.fift, first: @male_triple_jump.first, fourth: @male_triple_jump.fourth, name: @male_triple_jump.name, number: @male_triple_jump.number, op: @male_triple_jump.op, place: @male_triple_jump.place, reg: @male_triple_jump.reg, seconnd: @male_triple_jump.seconnd, sixth: @male_triple_jump.sixth, third: @male_triple_jump.third, vvFifth: @male_triple_jump.vvFifth, vvFirst: @male_triple_jump.vvFirst, vvFourth: @male_triple_jump.vvFourth, vvSecond: @male_triple_jump.vvSecond, vvSixth: @male_triple_jump.vvSixth, vvThird: @male_triple_jump.vvThird } }
    assert_redirected_to male_triple_jump_url(@male_triple_jump)
  end

  test "should destroy male_triple_jump" do
    assert_difference('MaleTripleJump.count', -1) do
      delete male_triple_jump_url(@male_triple_jump)
    end

    assert_redirected_to male_triple_jumps_url
  end
end
