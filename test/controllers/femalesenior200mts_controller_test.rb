require 'test_helper'

class Femalesenior200mtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @femalesenior200mt = femalesenior200mts(:one)
  end

  test "should get index" do
    get femalesenior200mts_url
    assert_response :success
  end

  test "should get new" do
    get new_femalesenior200mt_url
    assert_response :success
  end

  test "should create femalesenior200mt" do
    assert_difference('Femalesenior200mt.count') do
      post femalesenior200mts_url, params: { femalesenior200mt: { achievement: @femalesenior200mt.achievement, an: @femalesenior200mt.an, athlete: @femalesenior200mt.athlete, club: @femalesenior200mt.club, country: @femalesenior200mt.country, femaleSenior200mts_id: @femalesenior200mt.femaleSenior200mts_id, number: @femalesenior200mt.number, place: @femalesenior200mt.place, rail: @femalesenior200mt.rail, region: @femalesenior200mt.region } }
    end

    assert_redirected_to femalesenior200mt_url(Femalesenior200mt.last)
  end

  test "should show femalesenior200mt" do
    get femalesenior200mt_url(@femalesenior200mt)
    assert_response :success
  end

  test "should get edit" do
    get edit_femalesenior200mt_url(@femalesenior200mt)
    assert_response :success
  end

  test "should update femalesenior200mt" do
    patch femalesenior200mt_url(@femalesenior200mt), params: { femalesenior200mt: { achievement: @femalesenior200mt.achievement, an: @femalesenior200mt.an, athlete: @femalesenior200mt.athlete, club: @femalesenior200mt.club, country: @femalesenior200mt.country, femaleSenior200mts_id: @femalesenior200mt.femaleSenior200mts_id, number: @femalesenior200mt.number, place: @femalesenior200mt.place, rail: @femalesenior200mt.rail, region: @femalesenior200mt.region } }
    assert_redirected_to femalesenior200mt_url(@femalesenior200mt)
  end

  test "should destroy femalesenior200mt" do
    assert_difference('Femalesenior200mt.count', -1) do
      delete femalesenior200mt_url(@femalesenior200mt)
    end

    assert_redirected_to femalesenior200mts_url
  end
end
