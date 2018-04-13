require 'test_helper'

class StartFemaleShotPutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female_shot_put = start_female_shot_puts(:one)
  end

  test "should get index" do
    get start_female_shot_puts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female_shot_put_url
    assert_response :success
  end

  test "should create start_female_shot_put" do
    assert_difference('StartFemaleShotPut.count') do
      post start_female_shot_puts_url, params: { start_female_shot_put: { achievement: @start_female_shot_put.achievement, an: @start_female_shot_put.an, athlete: @start_female_shot_put.athlete, club: @start_female_shot_put.club, country: @start_female_shot_put.country, femaleShotPutHead_id: @start_female_shot_put.femaleShotPutHead_id, number: @start_female_shot_put.number, place: @start_female_shot_put.place, rail: @start_female_shot_put.rail, region: @start_female_shot_put.region } }
    end

    assert_redirected_to start_female_shot_put_url(StartFemaleShotPut.last)
  end

  test "should show start_female_shot_put" do
    get start_female_shot_put_url(@start_female_shot_put)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female_shot_put_url(@start_female_shot_put)
    assert_response :success
  end

  test "should update start_female_shot_put" do
    patch start_female_shot_put_url(@start_female_shot_put), params: { start_female_shot_put: { achievement: @start_female_shot_put.achievement, an: @start_female_shot_put.an, athlete: @start_female_shot_put.athlete, club: @start_female_shot_put.club, country: @start_female_shot_put.country, femaleShotPutHead_id: @start_female_shot_put.femaleShotPutHead_id, number: @start_female_shot_put.number, place: @start_female_shot_put.place, rail: @start_female_shot_put.rail, region: @start_female_shot_put.region } }
    assert_redirected_to start_female_shot_put_url(@start_female_shot_put)
  end

  test "should destroy start_female_shot_put" do
    assert_difference('StartFemaleShotPut.count', -1) do
      delete start_female_shot_put_url(@start_female_shot_put)
    end

    assert_redirected_to start_female_shot_puts_url
  end
end
