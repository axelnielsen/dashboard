require 'test_helper'

class Malesenior200mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @malesenior200mt = malesenior200mts(:one)
  end

  test "should get index" do
    get malesenior200mts_url
    assert_response :success
  end

  test "should get new" do
    get new_malesenior200mt_url
    assert_response :success
  end

  test "should create malesenior200mt" do
    assert_difference('Malesenior200mt.count') do
      post malesenior200mts_url, params: { malesenior200mt: { achievement: @malesenior200mt.achievement, an: @malesenior200mt.an, athlete: @malesenior200mt.athlete, club: @malesenior200mt.club, country: @malesenior200mt.country, maleSenior200mts_id: @malesenior200mt.maleSenior200mts_id, number: @malesenior200mt.number, place: @malesenior200mt.place, rail: @malesenior200mt.rail, region: @malesenior200mt.region } }
    end

    assert_redirected_to malesenior200mt_url(Malesenior200mt.last)
  end

  test "should show malesenior200mt" do
    get malesenior200mt_url(@malesenior200mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_malesenior200mt_url(@malesenior200mt)
    assert_response :success
  end

  test "should update malesenior200mt" do
    patch malesenior200mt_url(@malesenior200mt), params: { malesenior200mt: { achievement: @malesenior200mt.achievement, an: @malesenior200mt.an, athlete: @malesenior200mt.athlete, club: @malesenior200mt.club, country: @malesenior200mt.country, maleSenior200mts_id: @malesenior200mt.maleSenior200mts_id, number: @malesenior200mt.number, place: @malesenior200mt.place, rail: @malesenior200mt.rail, region: @malesenior200mt.region } }
    assert_redirected_to malesenior200mt_url(@malesenior200mt)
  end

  test "should destroy malesenior200mt" do
    assert_difference('Malesenior200mt.count', -1) do
      delete malesenior200mt_url(@malesenior200mt)
    end

    assert_redirected_to malesenior200mts_url
  end
end
