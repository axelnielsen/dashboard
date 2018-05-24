require 'test_helper'

class Track2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track2 = track2s(:one)
  end

  test "should get index" do
    get track2s_url
    assert_response :success
  end

  test "should get new" do
    get new_track2_url
    assert_response :success
  end

  test "should create track2" do
    assert_difference('Track2.count') do
      post track2s_url, params: { track2: { achievement: @track2.achievement, an: @track2.an, athlete: @track2.athlete, club: @track2.club, pais: @track2.pais, place: @track2.place, region: @track2.region, track_head2_id: @track2.track_head2_id } }
    end

    assert_redirected_to track2_url(Track2.last)
  end

  test "should show track2" do
    get track2_url(@track2)
    assert_response :success
  end

  test "should get edit" do
    get edit_track2_url(@track2)
    assert_response :success
  end

  test "should update track2" do
    patch track2_url(@track2), params: { track2: { achievement: @track2.achievement, an: @track2.an, athlete: @track2.athlete, club: @track2.club, pais: @track2.pais, place: @track2.place, region: @track2.region, track_head2_id: @track2.track_head2_id } }
    assert_redirected_to track2_url(@track2)
  end

  test "should destroy track2" do
    assert_difference('Track2.count', -1) do
      delete track2_url(@track2)
    end

    assert_redirected_to track2s_url
  end
end
