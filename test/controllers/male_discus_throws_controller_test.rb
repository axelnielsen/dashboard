require 'test_helper'

class MaleDiscusThrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_discus_throw = male_discus_throws(:one)
  end

  test "should get index" do
    get male_discus_throws_url
    assert_response :success
  end

  test "should get new" do
    get new_male_discus_throw_url
    assert_response :success
  end

  test "should create male_discus_throw" do
    assert_difference('MaleDiscusThrow.count') do
      post male_discus_throws_url, params: { male_discus_throw: { achievement: @male_discus_throw.achievement, an: @male_discus_throw.an, club: @male_discus_throw.club, fifth: @male_discus_throw.fifth, first: @male_discus_throw.first, fourth: @male_discus_throw.fourth, name: @male_discus_throw.name, number: @male_discus_throw.number, place: @male_discus_throw.place, region: @male_discus_throw.region, second: @male_discus_throw.second, sixth: @male_discus_throw.sixth, third: @male_discus_throw.third } }
    end

    assert_redirected_to male_discus_throw_url(MaleDiscusThrow.last)
  end

  test "should show male_discus_throw" do
    get male_discus_throw_url(@male_discus_throw)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_discus_throw_url(@male_discus_throw)
    assert_response :success
  end

  test "should update male_discus_throw" do
    patch male_discus_throw_url(@male_discus_throw), params: { male_discus_throw: { achievement: @male_discus_throw.achievement, an: @male_discus_throw.an, club: @male_discus_throw.club, fifth: @male_discus_throw.fifth, first: @male_discus_throw.first, fourth: @male_discus_throw.fourth, name: @male_discus_throw.name, number: @male_discus_throw.number, place: @male_discus_throw.place, region: @male_discus_throw.region, second: @male_discus_throw.second, sixth: @male_discus_throw.sixth, third: @male_discus_throw.third } }
    assert_redirected_to male_discus_throw_url(@male_discus_throw)
  end

  test "should destroy male_discus_throw" do
    assert_difference('MaleDiscusThrow.count', -1) do
      delete male_discus_throw_url(@male_discus_throw)
    end

    assert_redirected_to male_discus_throws_url
  end
end
