require 'test_helper'

class StartMaleDiscusThrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male_discus_throw = start_male_discus_throws(:one)
  end

  test "should get index" do
    get start_male_discus_throws_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male_discus_throw_url
    assert_response :success
  end

  test "should create start_male_discus_throw" do
    assert_difference('StartMaleDiscusThrow.count') do
      post start_male_discus_throws_url, params: { start_male_discus_throw: { achievement: @start_male_discus_throw.achievement, an: @start_male_discus_throw.an, athlete: @start_male_discus_throw.athlete, club: @start_male_discus_throw.club, country: @start_male_discus_throw.country, male_discus_throwStart_id: @start_male_discus_throw.male_discus_throwStart_id, number: @start_male_discus_throw.number, place: @start_male_discus_throw.place, rail: @start_male_discus_throw.rail, region: @start_male_discus_throw.region } }
    end

    assert_redirected_to start_male_discus_throw_url(StartMaleDiscusThrow.last)
  end

  test "should show start_male_discus_throw" do
    get start_male_discus_throw_url(@start_male_discus_throw)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male_discus_throw_url(@start_male_discus_throw)
    assert_response :success
  end

  test "should update start_male_discus_throw" do
    patch start_male_discus_throw_url(@start_male_discus_throw), params: { start_male_discus_throw: { achievement: @start_male_discus_throw.achievement, an: @start_male_discus_throw.an, athlete: @start_male_discus_throw.athlete, club: @start_male_discus_throw.club, country: @start_male_discus_throw.country, male_discus_throwStart_id: @start_male_discus_throw.male_discus_throwStart_id, number: @start_male_discus_throw.number, place: @start_male_discus_throw.place, rail: @start_male_discus_throw.rail, region: @start_male_discus_throw.region } }
    assert_redirected_to start_male_discus_throw_url(@start_male_discus_throw)
  end

  test "should destroy start_male_discus_throw" do
    assert_difference('StartMaleDiscusThrow.count', -1) do
      delete start_male_discus_throw_url(@start_male_discus_throw)
    end

    assert_redirected_to start_male_discus_throws_url
  end
end
