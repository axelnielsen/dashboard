require 'test_helper'

class StartFemaleHammerThrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female_hammer_throw = start_female_hammer_throws(:one)
  end

  test "should get index" do
    get start_female_hammer_throws_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female_hammer_throw_url
    assert_response :success
  end

  test "should create start_female_hammer_throw" do
    assert_difference('StartFemaleHammerThrow.count') do
      post start_female_hammer_throws_url, params: { start_female_hammer_throw: { achievement: @start_female_hammer_throw.achievement, an: @start_female_hammer_throw.an, athlete: @start_female_hammer_throw.athlete, club: @start_female_hammer_throw.club, country: @start_female_hammer_throw.country, femalehammerthrowStart_id: @start_female_hammer_throw.femalehammerthrowStart_id, number: @start_female_hammer_throw.number, place: @start_female_hammer_throw.place, rail: @start_female_hammer_throw.rail, region: @start_female_hammer_throw.region } }
    end

    assert_redirected_to start_female_hammer_throw_url(StartFemaleHammerThrow.last)
  end

  test "should show start_female_hammer_throw" do
    get start_female_hammer_throw_url(@start_female_hammer_throw)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female_hammer_throw_url(@start_female_hammer_throw)
    assert_response :success
  end

  test "should update start_female_hammer_throw" do
    patch start_female_hammer_throw_url(@start_female_hammer_throw), params: { start_female_hammer_throw: { achievement: @start_female_hammer_throw.achievement, an: @start_female_hammer_throw.an, athlete: @start_female_hammer_throw.athlete, club: @start_female_hammer_throw.club, country: @start_female_hammer_throw.country, femalehammerthrowStart_id: @start_female_hammer_throw.femalehammerthrowStart_id, number: @start_female_hammer_throw.number, place: @start_female_hammer_throw.place, rail: @start_female_hammer_throw.rail, region: @start_female_hammer_throw.region } }
    assert_redirected_to start_female_hammer_throw_url(@start_female_hammer_throw)
  end

  test "should destroy start_female_hammer_throw" do
    assert_difference('StartFemaleHammerThrow.count', -1) do
      delete start_female_hammer_throw_url(@start_female_hammer_throw)
    end

    assert_redirected_to start_female_hammer_throws_url
  end
end
