require 'test_helper'

class Jump2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jump2 = jump2s(:one)
  end

  test "should get index" do
    get jump2s_url
    assert_response :success
  end

  test "should get new" do
    get new_jump2_url
    assert_response :success
  end

  test "should create jump2" do
    assert_difference('Jump2.count') do
      post jump2s_url, params: { jump2: { achievement: @jump2.achievement, athlete: @jump2.athlete, club: @jump2.club, fifth: @jump2.fifth, first: @jump2.first, fourth: @jump2.fourth, jump_head2_id: @jump2.jump_head2_id, op: @jump2.op, place: @jump2.place, second: @jump2.second, sixth: @jump2.sixth, third: @jump2.third, vvfifth: @jump2.vvfifth, vvfirst: @jump2.vvfirst, vvfourth: @jump2.vvfourth, vvsecond: @jump2.vvsecond, vvsixth: @jump2.vvsixth, vvthird: @jump2.vvthird } }
    end

    assert_redirected_to jump2_url(Jump2.last)
  end

  test "should show jump2" do
    get jump2_url(@jump2)
    assert_response :success
  end

  test "should get edit" do
    get edit_jump2_url(@jump2)
    assert_response :success
  end

  test "should update jump2" do
    patch jump2_url(@jump2), params: { jump2: { achievement: @jump2.achievement, athlete: @jump2.athlete, club: @jump2.club, fifth: @jump2.fifth, first: @jump2.first, fourth: @jump2.fourth, jump_head2_id: @jump2.jump_head2_id, op: @jump2.op, place: @jump2.place, second: @jump2.second, sixth: @jump2.sixth, third: @jump2.third, vvfifth: @jump2.vvfifth, vvfirst: @jump2.vvfirst, vvfourth: @jump2.vvfourth, vvsecond: @jump2.vvsecond, vvsixth: @jump2.vvsixth, vvthird: @jump2.vvthird } }
    assert_redirected_to jump2_url(@jump2)
  end

  test "should destroy jump2" do
    assert_difference('Jump2.count', -1) do
      delete jump2_url(@jump2)
    end

    assert_redirected_to jump2s_url
  end
end
