require 'test_helper'

class StartFemaleDiscusThrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female_discus_throw = start_female_discus_throws(:one)
  end

  test "should get index" do
    get start_female_discus_throws_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female_discus_throw_url
    assert_response :success
  end

  test "should create start_female_discus_throw" do
    assert_difference('StartFemaleDiscusThrow.count') do
      post start_female_discus_throws_url, params: { start_female_discus_throw: { achievement: @start_female_discus_throw.achievement, an: @start_female_discus_throw.an, athlete: @start_female_discus_throw.athlete, club: @start_female_discus_throw.club, country: @start_female_discus_throw.country, femalediscusthrowStart_id: @start_female_discus_throw.femalediscusthrowStart_id, number: @start_female_discus_throw.number, place: @start_female_discus_throw.place, rail: @start_female_discus_throw.rail, region: @start_female_discus_throw.region } }
    end

    assert_redirected_to start_female_discus_throw_url(StartFemaleDiscusThrow.last)
  end

  test "should show start_female_discus_throw" do
    get start_female_discus_throw_url(@start_female_discus_throw)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female_discus_throw_url(@start_female_discus_throw)
    assert_response :success
  end

  test "should update start_female_discus_throw" do
    patch start_female_discus_throw_url(@start_female_discus_throw), params: { start_female_discus_throw: { achievement: @start_female_discus_throw.achievement, an: @start_female_discus_throw.an, athlete: @start_female_discus_throw.athlete, club: @start_female_discus_throw.club, country: @start_female_discus_throw.country, femalediscusthrowStart_id: @start_female_discus_throw.femalediscusthrowStart_id, number: @start_female_discus_throw.number, place: @start_female_discus_throw.place, rail: @start_female_discus_throw.rail, region: @start_female_discus_throw.region } }
    assert_redirected_to start_female_discus_throw_url(@start_female_discus_throw)
  end

  test "should destroy start_female_discus_throw" do
    assert_difference('StartFemaleDiscusThrow.count', -1) do
      delete start_female_discus_throw_url(@start_female_discus_throw)
    end

    assert_redirected_to start_female_discus_throws_url
  end
end
