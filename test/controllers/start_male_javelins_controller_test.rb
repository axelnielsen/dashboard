require 'test_helper'

class StartMaleJavelinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male_javelin = start_male_javelins(:one)
  end

  test "should get index" do
    get start_male_javelins_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male_javelin_url
    assert_response :success
  end

  test "should create start_male_javelin" do
    assert_difference('StartMaleJavelin.count') do
      post start_male_javelins_url, params: { start_male_javelin: { achievement: @start_male_javelin.achievement, an: @start_male_javelin.an, athlete: @start_male_javelin.athlete, club: @start_male_javelin.club, country: @start_male_javelin.country, maleJavelinHead_id: @start_male_javelin.maleJavelinHead_id, number: @start_male_javelin.number, place: @start_male_javelin.place, rail: @start_male_javelin.rail, region: @start_male_javelin.region } }
    end

    assert_redirected_to start_male_javelin_url(StartMaleJavelin.last)
  end

  test "should show start_male_javelin" do
    get start_male_javelin_url(@start_male_javelin)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male_javelin_url(@start_male_javelin)
    assert_response :success
  end

  test "should update start_male_javelin" do
    patch start_male_javelin_url(@start_male_javelin), params: { start_male_javelin: { achievement: @start_male_javelin.achievement, an: @start_male_javelin.an, athlete: @start_male_javelin.athlete, club: @start_male_javelin.club, country: @start_male_javelin.country, maleJavelinHead_id: @start_male_javelin.maleJavelinHead_id, number: @start_male_javelin.number, place: @start_male_javelin.place, rail: @start_male_javelin.rail, region: @start_male_javelin.region } }
    assert_redirected_to start_male_javelin_url(@start_male_javelin)
  end

  test "should destroy start_male_javelin" do
    assert_difference('StartMaleJavelin.count', -1) do
      delete start_male_javelin_url(@start_male_javelin)
    end

    assert_redirected_to start_male_javelins_url
  end
end
