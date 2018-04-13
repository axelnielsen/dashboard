require 'test_helper'

class StartFemaleJavelinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female_javelin = start_female_javelins(:one)
  end

  test "should get index" do
    get start_female_javelins_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female_javelin_url
    assert_response :success
  end

  test "should create start_female_javelin" do
    assert_difference('StartFemaleJavelin.count') do
      post start_female_javelins_url, params: { start_female_javelin: { achievement: @start_female_javelin.achievement, an: @start_female_javelin.an, athlete: @start_female_javelin.athlete, club: @start_female_javelin.club, country: @start_female_javelin.country, femaleJavelinHead_id: @start_female_javelin.femaleJavelinHead_id, number: @start_female_javelin.number, place: @start_female_javelin.place, rail: @start_female_javelin.rail, region: @start_female_javelin.region } }
    end

    assert_redirected_to start_female_javelin_url(StartFemaleJavelin.last)
  end

  test "should show start_female_javelin" do
    get start_female_javelin_url(@start_female_javelin)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female_javelin_url(@start_female_javelin)
    assert_response :success
  end

  test "should update start_female_javelin" do
    patch start_female_javelin_url(@start_female_javelin), params: { start_female_javelin: { achievement: @start_female_javelin.achievement, an: @start_female_javelin.an, athlete: @start_female_javelin.athlete, club: @start_female_javelin.club, country: @start_female_javelin.country, femaleJavelinHead_id: @start_female_javelin.femaleJavelinHead_id, number: @start_female_javelin.number, place: @start_female_javelin.place, rail: @start_female_javelin.rail, region: @start_female_javelin.region } }
    assert_redirected_to start_female_javelin_url(@start_female_javelin)
  end

  test "should destroy start_female_javelin" do
    assert_difference('StartFemaleJavelin.count', -1) do
      delete start_female_javelin_url(@start_female_javelin)
    end

    assert_redirected_to start_female_javelins_url
  end
end
