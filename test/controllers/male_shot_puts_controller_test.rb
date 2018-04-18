require 'test_helper'

class MaleShotPutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_shot_put = male_shot_puts(:one)
  end

  test "should get index" do
    get male_shot_puts_url
    assert_response :success
  end

  test "should get new" do
    get new_male_shot_put_url
    assert_response :success
  end

  test "should create male_shot_put" do
    assert_difference('MaleShotPut.count') do
      post male_shot_puts_url, params: { male_shot_put: { achievement: @male_shot_put.achievement, an: @male_shot_put.an, club: @male_shot_put.club, fifth: @male_shot_put.fifth, first: @male_shot_put.first, fourth: @male_shot_put.fourth, name: @male_shot_put.name, number: @male_shot_put.number, place: @male_shot_put.place, region: @male_shot_put.region, second: @male_shot_put.second, sixth: @male_shot_put.sixth, third: @male_shot_put.third } }
    end

    assert_redirected_to male_shot_put_url(MaleShotPut.last)
  end

  test "should show male_shot_put" do
    get male_shot_put_url(@male_shot_put)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_shot_put_url(@male_shot_put)
    assert_response :success
  end

  test "should update male_shot_put" do
    patch male_shot_put_url(@male_shot_put), params: { male_shot_put: { achievement: @male_shot_put.achievement, an: @male_shot_put.an, club: @male_shot_put.club, fifth: @male_shot_put.fifth, first: @male_shot_put.first, fourth: @male_shot_put.fourth, name: @male_shot_put.name, number: @male_shot_put.number, place: @male_shot_put.place, region: @male_shot_put.region, second: @male_shot_put.second, sixth: @male_shot_put.sixth, third: @male_shot_put.third } }
    assert_redirected_to male_shot_put_url(@male_shot_put)
  end

  test "should destroy male_shot_put" do
    assert_difference('MaleShotPut.count', -1) do
      delete male_shot_put_url(@male_shot_put)
    end

    assert_redirected_to male_shot_puts_url
  end
end
