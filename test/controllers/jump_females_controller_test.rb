require 'test_helper'

class JumpFemalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jump_female = jump_females(:one)
  end

  test "should get index" do
    get jump_females_url
    assert_response :success
  end

  test "should get new" do
    get new_jump_female_url
    assert_response :success
  end

  test "should create jump_female" do
    assert_difference('JumpFemale.count') do
      post jump_females_url, params: { jump_female: { achievement: @jump_female.achievement, an: @jump_female.an, club: @jump_female.club, country: @jump_female.country, fift: @jump_female.fift, first: @jump_female.first, fourth: @jump_female.fourth, name: @jump_female.name, number: @jump_female.number, op: @jump_female.op, place: @jump_female.place, reg: @jump_female.reg, seconnd: @jump_female.seconnd, sixth: @jump_female.sixth, third: @jump_female.third, vvFifth: @jump_female.vvFifth, vvFirst: @jump_female.vvFirst, vvFourth: @jump_female.vvFourth, vvSecond: @jump_female.vvSecond, vvSixth: @jump_female.vvSixth, vvThird: @jump_female.vvThird } }
    end

    assert_redirected_to jump_female_url(JumpFemale.last)
  end

  test "should show jump_female" do
    get jump_female_url(@jump_female)
    assert_response :success
  end

  test "should get edit" do
    get edit_jump_female_url(@jump_female)
    assert_response :success
  end

  test "should update jump_female" do
    patch jump_female_url(@jump_female), params: { jump_female: { achievement: @jump_female.achievement, an: @jump_female.an, club: @jump_female.club, country: @jump_female.country, fift: @jump_female.fift, first: @jump_female.first, fourth: @jump_female.fourth, name: @jump_female.name, number: @jump_female.number, op: @jump_female.op, place: @jump_female.place, reg: @jump_female.reg, seconnd: @jump_female.seconnd, sixth: @jump_female.sixth, third: @jump_female.third, vvFifth: @jump_female.vvFifth, vvFirst: @jump_female.vvFirst, vvFourth: @jump_female.vvFourth, vvSecond: @jump_female.vvSecond, vvSixth: @jump_female.vvSixth, vvThird: @jump_female.vvThird } }
    assert_redirected_to jump_female_url(@jump_female)
  end

  test "should destroy jump_female" do
    assert_difference('JumpFemale.count', -1) do
      delete jump_female_url(@jump_female)
    end

    assert_redirected_to jump_females_url
  end
end
