require 'test_helper'

class MaleHammerThrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_hammer_throw = male_hammer_throws(:one)
  end

  test "should get index" do
    get male_hammer_throws_url
    assert_response :success
  end

  test "should get new" do
    get new_male_hammer_throw_url
    assert_response :success
  end

  test "should create male_hammer_throw" do
    assert_difference('MaleHammerThrow.count') do
      post male_hammer_throws_url, params: { male_hammer_throw: { achievement: @male_hammer_throw.achievement, an: @male_hammer_throw.an, club: @male_hammer_throw.club, fifth: @male_hammer_throw.fifth, first: @male_hammer_throw.first, fourth: @male_hammer_throw.fourth, name: @male_hammer_throw.name, number: @male_hammer_throw.number, place: @male_hammer_throw.place, region: @male_hammer_throw.region, second: @male_hammer_throw.second, sixth: @male_hammer_throw.sixth, third: @male_hammer_throw.third } }
    end

    assert_redirected_to male_hammer_throw_url(MaleHammerThrow.last)
  end

  test "should show male_hammer_throw" do
    get male_hammer_throw_url(@male_hammer_throw)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_hammer_throw_url(@male_hammer_throw)
    assert_response :success
  end

  test "should update male_hammer_throw" do
    patch male_hammer_throw_url(@male_hammer_throw), params: { male_hammer_throw: { achievement: @male_hammer_throw.achievement, an: @male_hammer_throw.an, club: @male_hammer_throw.club, fifth: @male_hammer_throw.fifth, first: @male_hammer_throw.first, fourth: @male_hammer_throw.fourth, name: @male_hammer_throw.name, number: @male_hammer_throw.number, place: @male_hammer_throw.place, region: @male_hammer_throw.region, second: @male_hammer_throw.second, sixth: @male_hammer_throw.sixth, third: @male_hammer_throw.third } }
    assert_redirected_to male_hammer_throw_url(@male_hammer_throw)
  end

  test "should destroy male_hammer_throw" do
    assert_difference('MaleHammerThrow.count', -1) do
      delete male_hammer_throw_url(@male_hammer_throw)
    end

    assert_redirected_to male_hammer_throws_url
  end
end
