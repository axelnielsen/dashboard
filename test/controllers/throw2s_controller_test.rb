require 'test_helper'

class Throw2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @throw2 = throw2s(:one)
  end

  test "should get index" do
    get throw2s_url
    assert_response :success
  end

  test "should get new" do
    get new_throw2_url
    assert_response :success
  end

  test "should create throw2" do
    assert_difference('Throw2.count') do
      post throw2s_url, params: { throw2: { achievement: @throw2.achievement, an: @throw2.an, athlete: @throw2.athlete, club: @throw2.club, fifth: @throw2.fifth, first: @throw2.first, fourth: @throw2.fourth, op: @throw2.op, place: @throw2.place, region: @throw2.region, second: @throw2.second, sixth: @throw2.sixth, third: @throw2.third, throw_head2_id: @throw2.throw_head2_id } }
    end

    assert_redirected_to throw2_url(Throw2.last)
  end

  test "should show throw2" do
    get throw2_url(@throw2)
    assert_response :success
  end

  test "should get edit" do
    get edit_throw2_url(@throw2)
    assert_response :success
  end

  test "should update throw2" do
    patch throw2_url(@throw2), params: { throw2: { achievement: @throw2.achievement, an: @throw2.an, athlete: @throw2.athlete, club: @throw2.club, fifth: @throw2.fifth, first: @throw2.first, fourth: @throw2.fourth, op: @throw2.op, place: @throw2.place, region: @throw2.region, second: @throw2.second, sixth: @throw2.sixth, third: @throw2.third, throw_head2_id: @throw2.throw_head2_id } }
    assert_redirected_to throw2_url(@throw2)
  end

  test "should destroy throw2" do
    assert_difference('Throw2.count', -1) do
      delete throw2_url(@throw2)
    end

    assert_redirected_to throw2s_url
  end
end
