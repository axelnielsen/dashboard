require 'test_helper'

class StartMaleShotPutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male_shot_put = start_male_shot_puts(:one)
  end

  test "should get index" do
    get start_male_shot_puts_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male_shot_put_url
    assert_response :success
  end

  test "should create start_male_shot_put" do
    assert_difference('StartMaleShotPut.count') do
      post start_male_shot_puts_url, params: { start_male_shot_put: { achievement: @start_male_shot_put.achievement, an: @start_male_shot_put.an, athlete: @start_male_shot_put.athlete, club: @start_male_shot_put.club, country: @start_male_shot_put.country, maleShotPutHead_id: @start_male_shot_put.maleShotPutHead_id, number: @start_male_shot_put.number, place: @start_male_shot_put.place, rail: @start_male_shot_put.rail, region: @start_male_shot_put.region } }
    end

    assert_redirected_to start_male_shot_put_url(StartMaleShotPut.last)
  end

  test "should show start_male_shot_put" do
    get start_male_shot_put_url(@start_male_shot_put)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male_shot_put_url(@start_male_shot_put)
    assert_response :success
  end

  test "should update start_male_shot_put" do
    patch start_male_shot_put_url(@start_male_shot_put), params: { start_male_shot_put: { achievement: @start_male_shot_put.achievement, an: @start_male_shot_put.an, athlete: @start_male_shot_put.athlete, club: @start_male_shot_put.club, country: @start_male_shot_put.country, maleShotPutHead_id: @start_male_shot_put.maleShotPutHead_id, number: @start_male_shot_put.number, place: @start_male_shot_put.place, rail: @start_male_shot_put.rail, region: @start_male_shot_put.region } }
    assert_redirected_to start_male_shot_put_url(@start_male_shot_put)
  end

  test "should destroy start_male_shot_put" do
    assert_difference('StartMaleShotPut.count', -1) do
      delete start_male_shot_put_url(@start_male_shot_put)
    end

    assert_redirected_to start_male_shot_puts_url
  end
end
