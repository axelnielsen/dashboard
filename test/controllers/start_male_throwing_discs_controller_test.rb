require 'test_helper'

class StartMaleThrowingDiscsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_male_throwing_disc = start_male_throwing_discs(:one)
  end

  test "should get index" do
    get start_male_throwing_discs_url
    assert_response :success
  end

  test "should get new" do
    get new_start_male_throwing_disc_url
    assert_response :success
  end

  test "should create start_male_throwing_disc" do
    assert_difference('StartMaleThrowingDisc.count') do
      post start_male_throwing_discs_url, params: { start_male_throwing_disc: { achievement: @start_male_throwing_disc.achievement, an: @start_male_throwing_disc.an, athlete: @start_male_throwing_disc.athlete, club: @start_male_throwing_disc.club, country: @start_male_throwing_disc.country, maleThrowingDiscHead_id: @start_male_throwing_disc.maleThrowingDiscHead_id, number: @start_male_throwing_disc.number, place: @start_male_throwing_disc.place, rail: @start_male_throwing_disc.rail, region: @start_male_throwing_disc.region } }
    end

    assert_redirected_to start_male_throwing_disc_url(StartMaleThrowingDisc.last)
  end

  test "should show start_male_throwing_disc" do
    get start_male_throwing_disc_url(@start_male_throwing_disc)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_male_throwing_disc_url(@start_male_throwing_disc)
    assert_response :success
  end

  test "should update start_male_throwing_disc" do
    patch start_male_throwing_disc_url(@start_male_throwing_disc), params: { start_male_throwing_disc: { achievement: @start_male_throwing_disc.achievement, an: @start_male_throwing_disc.an, athlete: @start_male_throwing_disc.athlete, club: @start_male_throwing_disc.club, country: @start_male_throwing_disc.country, maleThrowingDiscHead_id: @start_male_throwing_disc.maleThrowingDiscHead_id, number: @start_male_throwing_disc.number, place: @start_male_throwing_disc.place, rail: @start_male_throwing_disc.rail, region: @start_male_throwing_disc.region } }
    assert_redirected_to start_male_throwing_disc_url(@start_male_throwing_disc)
  end

  test "should destroy start_male_throwing_disc" do
    assert_difference('StartMaleThrowingDisc.count', -1) do
      delete start_male_throwing_disc_url(@start_male_throwing_disc)
    end

    assert_redirected_to start_male_throwing_discs_url
  end
end
