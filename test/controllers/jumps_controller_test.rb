require 'test_helper'

class JumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jump = jumps(:one)
  end

  test "should get index" do
    get jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_jump_url
    assert_response :success
  end

  test "should create jump" do
    assert_difference('Jump.count') do
      post jumps_url, params: { jump: { achievement: @jump.achievement, an: @jump.an, club: @jump.club, country: @jump.country, fift: @jump.fift, first: @jump.first, fourth: @jump.fourth, name: @jump.name, number: @jump.number, op: @jump.op, place: @jump.place, reg: @jump.reg, seconnd: @jump.seconnd, sixth: @jump.sixth, third: @jump.third, vvFifth: @jump.vvFifth, vvFirst: @jump.vvFirst, vvFourth: @jump.vvFourth, vvSecond: @jump.vvSecond, vvSixth: @jump.vvSixth, vvThird: @jump.vvThird } }
    end

    assert_redirected_to jump_url(Jump.last)
  end

  test "should show jump" do
    get jump_url(@jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_jump_url(@jump)
    assert_response :success
  end

  test "should update jump" do
    patch jump_url(@jump), params: { jump: { achievement: @jump.achievement, an: @jump.an, club: @jump.club, country: @jump.country, fift: @jump.fift, first: @jump.first, fourth: @jump.fourth, name: @jump.name, number: @jump.number, op: @jump.op, place: @jump.place, reg: @jump.reg, seconnd: @jump.seconnd, sixth: @jump.sixth, third: @jump.third, vvFifth: @jump.vvFifth, vvFirst: @jump.vvFirst, vvFourth: @jump.vvFourth, vvSecond: @jump.vvSecond, vvSixth: @jump.vvSixth, vvThird: @jump.vvThird } }
    assert_redirected_to jump_url(@jump)
  end

  test "should destroy jump" do
    assert_difference('Jump.count', -1) do
      delete jump_url(@jump)
    end

    assert_redirected_to jumps_url
  end
end
