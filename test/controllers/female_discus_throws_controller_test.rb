require 'test_helper'

class FemaleDiscusThrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female_discus_throw = female_discus_throws(:one)
  end

  test "should get index" do
    get female_discus_throws_url
    assert_response :success
  end

  test "should get new" do
    get new_female_discus_throw_url
    assert_response :success
  end

  test "should create female_discus_throw" do
    assert_difference('FemaleDiscusThrow.count') do
      post female_discus_throws_url, params: { female_discus_throw: { achievement: @female_discus_throw.achievement, an: @female_discus_throw.an, club: @female_discus_throw.club, fifth: @female_discus_throw.fifth, first: @female_discus_throw.first, fourth: @female_discus_throw.fourth, name: @female_discus_throw.name, number: @female_discus_throw.number, place: @female_discus_throw.place, region: @female_discus_throw.region, second: @female_discus_throw.second, sixth: @female_discus_throw.sixth, third: @female_discus_throw.third } }
    end

    assert_redirected_to female_discus_throw_url(FemaleDiscusThrow.last)
  end

  test "should show female_discus_throw" do
    get female_discus_throw_url(@female_discus_throw)
    assert_response :success
  end

  test "should get edit" do
    get edit_female_discus_throw_url(@female_discus_throw)
    assert_response :success
  end

  test "should update female_discus_throw" do
    patch female_discus_throw_url(@female_discus_throw), params: { female_discus_throw: { achievement: @female_discus_throw.achievement, an: @female_discus_throw.an, club: @female_discus_throw.club, fifth: @female_discus_throw.fifth, first: @female_discus_throw.first, fourth: @female_discus_throw.fourth, name: @female_discus_throw.name, number: @female_discus_throw.number, place: @female_discus_throw.place, region: @female_discus_throw.region, second: @female_discus_throw.second, sixth: @female_discus_throw.sixth, third: @female_discus_throw.third } }
    assert_redirected_to female_discus_throw_url(@female_discus_throw)
  end

  test "should destroy female_discus_throw" do
    assert_difference('FemaleDiscusThrow.count', -1) do
      delete female_discus_throw_url(@female_discus_throw)
    end

    assert_redirected_to female_discus_throws_url
  end
end
