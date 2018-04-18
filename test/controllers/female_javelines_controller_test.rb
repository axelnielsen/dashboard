require 'test_helper'

class FemaleJavelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female_javeline = female_javelines(:one)
  end

  test "should get index" do
    get female_javelines_url
    assert_response :success
  end

  test "should get new" do
    get new_female_javeline_url
    assert_response :success
  end

  test "should create female_javeline" do
    assert_difference('FemaleJaveline.count') do
      post female_javelines_url, params: { female_javeline: { achievement: @female_javeline.achievement, an: @female_javeline.an, club: @female_javeline.club, fifth: @female_javeline.fifth, first: @female_javeline.first, fourth: @female_javeline.fourth, name: @female_javeline.name, number: @female_javeline.number, place: @female_javeline.place, region: @female_javeline.region, second: @female_javeline.second, sixth: @female_javeline.sixth, third: @female_javeline.third } }
    end

    assert_redirected_to female_javeline_url(FemaleJaveline.last)
  end

  test "should show female_javeline" do
    get female_javeline_url(@female_javeline)
    assert_response :success
  end

  test "should get edit" do
    get edit_female_javeline_url(@female_javeline)
    assert_response :success
  end

  test "should update female_javeline" do
    patch female_javeline_url(@female_javeline), params: { female_javeline: { achievement: @female_javeline.achievement, an: @female_javeline.an, club: @female_javeline.club, fifth: @female_javeline.fifth, first: @female_javeline.first, fourth: @female_javeline.fourth, name: @female_javeline.name, number: @female_javeline.number, place: @female_javeline.place, region: @female_javeline.region, second: @female_javeline.second, sixth: @female_javeline.sixth, third: @female_javeline.third } }
    assert_redirected_to female_javeline_url(@female_javeline)
  end

  test "should destroy female_javeline" do
    assert_difference('FemaleJaveline.count', -1) do
      delete female_javeline_url(@female_javeline)
    end

    assert_redirected_to female_javelines_url
  end
end
