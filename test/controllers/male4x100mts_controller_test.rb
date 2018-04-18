require 'test_helper'

class Male4x100mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male4x100mt = male4x100mts(:one)
  end

  test "should get index" do
    get male4x100mts_url
    assert_response :success
  end

  test "should get new" do
    get new_male4x100mt_url
    assert_response :success
  end

  test "should create male4x100mt" do
    assert_difference('Male4x100mt.count') do
      post male4x100mts_url, params: { male4x100mt: { achievement: @male4x100mt.achievement, an: @male4x100mt.an, athlete: @male4x100mt.athlete, club: @male4x100mt.club, country: @male4x100mt.country, male4x100mts_id: @male4x100mt.male4x100mts_id, number: @male4x100mt.number, place: @male4x100mt.place, rail: @male4x100mt.rail, region: @male4x100mt.region } }
    end

    assert_redirected_to male4x100mt_url(Male4x100mt.last)
  end

  test "should show male4x100mt" do
    get male4x100mt_url(@male4x100mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_male4x100mt_url(@male4x100mt)
    assert_response :success
  end

  test "should update male4x100mt" do
    patch male4x100mt_url(@male4x100mt), params: { male4x100mt: { achievement: @male4x100mt.achievement, an: @male4x100mt.an, athlete: @male4x100mt.athlete, club: @male4x100mt.club, country: @male4x100mt.country, male4x100mts_id: @male4x100mt.male4x100mts_id, number: @male4x100mt.number, place: @male4x100mt.place, rail: @male4x100mt.rail, region: @male4x100mt.region } }
    assert_redirected_to male4x100mt_url(@male4x100mt)
  end

  test "should destroy male4x100mt" do
    assert_difference('Male4x100mt.count', -1) do
      delete male4x100mt_url(@male4x100mt)
    end

    assert_redirected_to male4x100mts_url
  end
end
