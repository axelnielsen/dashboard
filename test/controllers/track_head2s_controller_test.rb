require 'test_helper'

class TrackHead2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track_head2 = track_head2s(:one)
  end

  test "should get index" do
    get track_head2s_url
    assert_response :success
  end

  test "should get new" do
    get new_track_head2_url
    assert_response :success
  end

  test "should create track_head2" do
    assert_difference('TrackHead2.count') do
      post track_head2s_url, params: { track_head2: { category_id: @track_head2.category_id, competition_id: @track_head2.competition_id, fecha: @track_head2.fecha, hora: @track_head2.hora, sex_id: @track_head2.sex_id, sport_id: @track_head2.sport_id } }
    end

    assert_redirected_to track_head2_url(TrackHead2.last)
  end

  test "should show track_head2" do
    get track_head2_url(@track_head2)
    assert_response :success
  end

  test "should get edit" do
    get edit_track_head2_url(@track_head2)
    assert_response :success
  end

  test "should update track_head2" do
    patch track_head2_url(@track_head2), params: { track_head2: { category_id: @track_head2.category_id, competition_id: @track_head2.competition_id, fecha: @track_head2.fecha, hora: @track_head2.hora, sex_id: @track_head2.sex_id, sport_id: @track_head2.sport_id } }
    assert_redirected_to track_head2_url(@track_head2)
  end

  test "should destroy track_head2" do
    assert_difference('TrackHead2.count', -1) do
      delete track_head2_url(@track_head2)
    end

    assert_redirected_to track_head2s_url
  end
end
