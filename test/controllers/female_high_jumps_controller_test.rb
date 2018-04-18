require 'test_helper'

class FemaleHighJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female_high_jump = female_high_jumps(:one)
  end

  test "should get index" do
    get female_high_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_female_high_jump_url
    assert_response :success
  end

  test "should create female_high_jump" do
    assert_difference('FemaleHighJump.count') do
      post female_high_jumps_url, params: { female_high_jump: { achievement: @female_high_jump.achievement, an: @female_high_jump.an, club: @female_high_jump.club, country: @female_high_jump.country, fift: @female_high_jump.fift, first: @female_high_jump.first, fourth: @female_high_jump.fourth, name: @female_high_jump.name, number: @female_high_jump.number, op: @female_high_jump.op, place: @female_high_jump.place, reg: @female_high_jump.reg, seconnd: @female_high_jump.seconnd, sixth: @female_high_jump.sixth, third: @female_high_jump.third, vvFifth: @female_high_jump.vvFifth, vvFirst: @female_high_jump.vvFirst, vvFourth: @female_high_jump.vvFourth, vvSecond: @female_high_jump.vvSecond, vvSixth: @female_high_jump.vvSixth, vvThird: @female_high_jump.vvThird } }
    end

    assert_redirected_to female_high_jump_url(FemaleHighJump.last)
  end

  test "should show female_high_jump" do
    get female_high_jump_url(@female_high_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_female_high_jump_url(@female_high_jump)
    assert_response :success
  end

  test "should update female_high_jump" do
    patch female_high_jump_url(@female_high_jump), params: { female_high_jump: { achievement: @female_high_jump.achievement, an: @female_high_jump.an, club: @female_high_jump.club, country: @female_high_jump.country, fift: @female_high_jump.fift, first: @female_high_jump.first, fourth: @female_high_jump.fourth, name: @female_high_jump.name, number: @female_high_jump.number, op: @female_high_jump.op, place: @female_high_jump.place, reg: @female_high_jump.reg, seconnd: @female_high_jump.seconnd, sixth: @female_high_jump.sixth, third: @female_high_jump.third, vvFifth: @female_high_jump.vvFifth, vvFirst: @female_high_jump.vvFirst, vvFourth: @female_high_jump.vvFourth, vvSecond: @female_high_jump.vvSecond, vvSixth: @female_high_jump.vvSixth, vvThird: @female_high_jump.vvThird } }
    assert_redirected_to female_high_jump_url(@female_high_jump)
  end

  test "should destroy female_high_jump" do
    assert_difference('FemaleHighJump.count', -1) do
      delete female_high_jump_url(@female_high_jump)
    end

    assert_redirected_to female_high_jumps_url
  end
end
