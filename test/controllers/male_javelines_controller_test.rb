require 'test_helper'

class MaleJavelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_javeline = male_javelines(:one)
  end

  test "should get index" do
    get male_javelines_url
    assert_response :success
  end

  test "should get new" do
    get new_male_javeline_url
    assert_response :success
  end

  test "should create male_javeline" do
    assert_difference('MaleJaveline.count') do
      post male_javelines_url, params: { male_javeline: { achievement: @male_javeline.achievement, an: @male_javeline.an, club: @male_javeline.club, fifth: @male_javeline.fifth, first: @male_javeline.first, fourth: @male_javeline.fourth, name: @male_javeline.name, number: @male_javeline.number, place: @male_javeline.place, region: @male_javeline.region, second: @male_javeline.second, sixth: @male_javeline.sixth, third: @male_javeline.third } }
    end

    assert_redirected_to male_javeline_url(MaleJaveline.last)
  end

  test "should show male_javeline" do
    get male_javeline_url(@male_javeline)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_javeline_url(@male_javeline)
    assert_response :success
  end

  test "should update male_javeline" do
    patch male_javeline_url(@male_javeline), params: { male_javeline: { achievement: @male_javeline.achievement, an: @male_javeline.an, club: @male_javeline.club, fifth: @male_javeline.fifth, first: @male_javeline.first, fourth: @male_javeline.fourth, name: @male_javeline.name, number: @male_javeline.number, place: @male_javeline.place, region: @male_javeline.region, second: @male_javeline.second, sixth: @male_javeline.sixth, third: @male_javeline.third } }
    assert_redirected_to male_javeline_url(@male_javeline)
  end

  test "should destroy male_javeline" do
    assert_difference('MaleJaveline.count', -1) do
      delete male_javeline_url(@male_javeline)
    end

    assert_redirected_to male_javelines_url
  end
end
