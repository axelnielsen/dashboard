require 'test_helper'

class Female4x100mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female4x100mt = female4x100mts(:one)
  end

  test "should get index" do
    get female4x100mts_url
    assert_response :success
  end

  test "should get new" do
    get new_female4x100mt_url
    assert_response :success
  end

  test "should create female4x100mt" do
    assert_difference('Female4x100mt.count') do
      post female4x100mts_url, params: { female4x100mt: { achievement: @female4x100mt.achievement, an: @female4x100mt.an, athlete: @female4x100mt.athlete, club: @female4x100mt.club, country: @female4x100mt.country, female4x100mts_id: @female4x100mt.female4x100mts_id, number: @female4x100mt.number, place: @female4x100mt.place, rail: @female4x100mt.rail, region: @female4x100mt.region } }
    end

    assert_redirected_to female4x100mt_url(Female4x100mt.last)
  end

  test "should show female4x100mt" do
    get female4x100mt_url(@female4x100mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_female4x100mt_url(@female4x100mt)
    assert_response :success
  end

  test "should update female4x100mt" do
    patch female4x100mt_url(@female4x100mt), params: { female4x100mt: { achievement: @female4x100mt.achievement, an: @female4x100mt.an, athlete: @female4x100mt.athlete, club: @female4x100mt.club, country: @female4x100mt.country, female4x100mts_id: @female4x100mt.female4x100mts_id, number: @female4x100mt.number, place: @female4x100mt.place, rail: @female4x100mt.rail, region: @female4x100mt.region } }
    assert_redirected_to female4x100mt_url(@female4x100mt)
  end

  test "should destroy female4x100mt" do
    assert_difference('Female4x100mt.count', -1) do
      delete female4x100mt_url(@female4x100mt)
    end

    assert_redirected_to female4x100mts_url
  end
end
