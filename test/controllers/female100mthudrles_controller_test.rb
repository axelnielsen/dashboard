require 'test_helper'

class Female100mthudrlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female100mthudrle = female100mthudrles(:one)
  end

  test "should get index" do
    get female100mthudrles_url
    assert_response :success
  end

  test "should get new" do
    get new_female100mthudrle_url
    assert_response :success
  end

  test "should create female100mthudrle" do
    assert_difference('Female100mthudrle.count') do
      post female100mthudrles_url, params: { female100mthudrle: { achievement: @female100mthudrle.achievement, an: @female100mthudrle.an, athlete: @female100mthudrle.athlete, club: @female100mthudrle.club, country: @female100mthudrle.country, female100mthudrlesHead_id: @female100mthudrle.female100mthudrlesHead_id, number: @female100mthudrle.number, place: @female100mthudrle.place, rail: @female100mthudrle.rail, region: @female100mthudrle.region } }
    end

    assert_redirected_to female100mthudrle_url(Female100mthudrle.last)
  end

  test "should show female100mthudrle" do
    get female100mthudrle_url(@female100mthudrle)
    assert_response :success
  end

  test "should get edit" do
    get edit_female100mthudrle_url(@female100mthudrle)
    assert_response :success
  end

  test "should update female100mthudrle" do
    patch female100mthudrle_url(@female100mthudrle), params: { female100mthudrle: { achievement: @female100mthudrle.achievement, an: @female100mthudrle.an, athlete: @female100mthudrle.athlete, club: @female100mthudrle.club, country: @female100mthudrle.country, female100mthudrlesHead_id: @female100mthudrle.female100mthudrlesHead_id, number: @female100mthudrle.number, place: @female100mthudrle.place, rail: @female100mthudrle.rail, region: @female100mthudrle.region } }
    assert_redirected_to female100mthudrle_url(@female100mthudrle)
  end

  test "should destroy female100mthudrle" do
    assert_difference('Female100mthudrle.count', -1) do
      delete female100mthudrle_url(@female100mthudrle)
    end

    assert_redirected_to female100mthudrles_url
  end
end
