require 'test_helper'

class Female4x400mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female4x400mt = female4x400mts(:one)
  end

  test "should get index" do
    get female4x400mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female4x400mt_url
    assert_response :success
  end

  test "should create female4x400mt" do
    assert_difference('Female4x400mt.count') do
      post female4x400mts_url, params: { female4x400mt: { achievement: @female4x400mt.achievement, an: @female4x400mt.an, athlete: @female4x400mt.athlete, club: @female4x400mt.club, country: @female4x400mt.country, female4x400mtHead_id: @female4x400mt.female4x400mtHead_id, number: @female4x400mt.number, place: @female4x400mt.place, rail: @female4x400mt.rail, region: @female4x400mt.region } }
    end

    assert_redirected_to female4x400mt_url(Female4x400mt.last)
  end

  test "should show female4x400mt" do
    get female4x400mt_url(@female4x400mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female4x400mt_url(@female4x400mt)
    assert_response :success
  end

  test "should update female4x400mt" do
    patch female4x400mt_url(@female4x400mt), params: { female4x400mt: { achievement: @female4x400mt.achievement, an: @female4x400mt.an, athlete: @female4x400mt.athlete, club: @female4x400mt.club, country: @female4x400mt.country, female4x400mtHead_id: @female4x400mt.female4x400mtHead_id, number: @female4x400mt.number, place: @female4x400mt.place, rail: @female4x400mt.rail, region: @female4x400mt.region } }
    assert_redirected_to female4x400mt_url(@female4x400mt)
  end

  test "should destroy female4x400mt" do
    assert_difference('Female4x400mt.count', -1) do
      delete female4x400mt_url(@female4x400mt)
    end

    assert_redirected_to female4x400mts_url
  end
end
