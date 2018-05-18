require 'test_helper'

class TrackHeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track_head = track_heads(:one)
  end

  test "should get index" do
    get track_heads_url
    assert_response :success
  end

  test "should get new" do
    get new_track_head_url
    assert_response :success
  end

  test "should create track_head" do
    assert_difference('TrackHead.count') do
      post track_heads_url, params: { track_head: { categoryId: @track_head.categoryId, fecha: @track_head.fecha, gender: @track_head.gender, hora: @track_head.hora, sportId: @track_head.sportId, trackSerieId: @track_head.trackSerieId } }
    end

    assert_redirected_to track_head_url(TrackHead.last)
  end

  test "should show track_head" do
    get track_head_url(@track_head)
    assert_response :success
  end

  test "should get edit" do
    get edit_track_head_url(@track_head)
    assert_response :success
  end

  test "should update track_head" do
    patch track_head_url(@track_head), params: { track_head: { categoryId: @track_head.categoryId, fecha: @track_head.fecha, gender: @track_head.gender, hora: @track_head.hora, sportId: @track_head.sportId, trackSerieId: @track_head.trackSerieId } }
    assert_redirected_to track_head_url(@track_head)
  end

  test "should destroy track_head" do
    assert_difference('TrackHead.count', -1) do
      delete track_head_url(@track_head)
    end

    assert_redirected_to track_heads_url
  end
end
