require 'test_helper'

class ThrowHead2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @throw_head2 = throw_head2s(:one)
  end

  test "should get index" do
    get throw_head2s_url
    assert_response :success
  end

  test "should get new" do
    get new_throw_head2_url
    assert_response :success
  end

  test "should create throw_head2" do
    assert_difference('ThrowHead2.count') do
      post throw_head2s_url, params: { throw_head2: { category_id: @throw_head2.category_id, competition_id: @throw_head2.competition_id, fecha_date: @throw_head2.fecha_date, hora: @throw_head2.hora, sex_id: @throw_head2.sex_id, sport_id: @throw_head2.sport_id, type: @throw_head2.type } }
    end

    assert_redirected_to throw_head2_url(ThrowHead2.last)
  end

  test "should show throw_head2" do
    get throw_head2_url(@throw_head2)
    assert_response :success
  end

  test "should get edit" do
    get edit_throw_head2_url(@throw_head2)
    assert_response :success
  end

  test "should update throw_head2" do
    patch throw_head2_url(@throw_head2), params: { throw_head2: { category_id: @throw_head2.category_id, competition_id: @throw_head2.competition_id, fecha_date: @throw_head2.fecha_date, hora: @throw_head2.hora, sex_id: @throw_head2.sex_id, sport_id: @throw_head2.sport_id, type: @throw_head2.type } }
    assert_redirected_to throw_head2_url(@throw_head2)
  end

  test "should destroy throw_head2" do
    assert_difference('ThrowHead2.count', -1) do
      delete throw_head2_url(@throw_head2)
    end

    assert_redirected_to throw_head2s_url
  end
end
