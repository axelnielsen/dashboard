require 'test_helper'

class FemaleShotPutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female_shot_put = female_shot_puts(:one)
  end

  test "should get index" do
    get female_shot_puts_url
    assert_response :success
  end

  test "should get new" do
    get new_female_shot_put_url
    assert_response :success
  end

  test "should create female_shot_put" do
    assert_difference('FemaleShotPut.count') do
      post female_shot_puts_url, params: { female_shot_put: { achievement: @female_shot_put.achievement, an: @female_shot_put.an, club: @female_shot_put.club, fifth: @female_shot_put.fifth, first: @female_shot_put.first, fourth: @female_shot_put.fourth, name: @female_shot_put.name, number: @female_shot_put.number, place: @female_shot_put.place, region: @female_shot_put.region, second: @female_shot_put.second, sixth: @female_shot_put.sixth, third: @female_shot_put.third } }
    end

    assert_redirected_to female_shot_put_url(FemaleShotPut.last)
  end

  test "should show female_shot_put" do
    get female_shot_put_url(@female_shot_put)
    assert_response :success
  end

  test "should get edit" do
    get edit_female_shot_put_url(@female_shot_put)
    assert_response :success
  end

  test "should update female_shot_put" do
    patch female_shot_put_url(@female_shot_put), params: { female_shot_put: { achievement: @female_shot_put.achievement, an: @female_shot_put.an, club: @female_shot_put.club, fifth: @female_shot_put.fifth, first: @female_shot_put.first, fourth: @female_shot_put.fourth, name: @female_shot_put.name, number: @female_shot_put.number, place: @female_shot_put.place, region: @female_shot_put.region, second: @female_shot_put.second, sixth: @female_shot_put.sixth, third: @female_shot_put.third } }
    assert_redirected_to female_shot_put_url(@female_shot_put)
  end

  test "should destroy female_shot_put" do
    assert_difference('FemaleShotPut.count', -1) do
      delete female_shot_put_url(@female_shot_put)
    end

    assert_redirected_to female_shot_puts_url
  end
end
