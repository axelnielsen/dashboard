require 'test_helper'

class HjumpHead2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hjump_head2 = hjump_head2s(:one)
  end

  test "should get index" do
    get hjump_head2s_url
    assert_response :success
  end

  test "should get new" do
    get new_hjump_head2_url
    assert_response :success
  end

  test "should create hjump_head2" do
    assert_difference('HjumpHead2.count') do
      post hjump_head2s_url, params: { hjump_head2: { category_id: @hjump_head2.category_id, competition_id: @hjump_head2.competition_id, fecha: @hjump_head2.fecha, hora: @hjump_head2.hora, serie: @hjump_head2.serie, sex_id: @hjump_head2.sex_id, sport_id: @hjump_head2.sport_id } }
    end

    assert_redirected_to hjump_head2_url(HjumpHead2.last)
  end

  test "should show hjump_head2" do
    get hjump_head2_url(@hjump_head2)
    assert_response :success
  end

  test "should get edit" do
    get edit_hjump_head2_url(@hjump_head2)
    assert_response :success
  end

  test "should update hjump_head2" do
    patch hjump_head2_url(@hjump_head2), params: { hjump_head2: { category_id: @hjump_head2.category_id, competition_id: @hjump_head2.competition_id, fecha: @hjump_head2.fecha, hora: @hjump_head2.hora, serie: @hjump_head2.serie, sex_id: @hjump_head2.sex_id, sport_id: @hjump_head2.sport_id } }
    assert_redirected_to hjump_head2_url(@hjump_head2)
  end

  test "should destroy hjump_head2" do
    assert_difference('HjumpHead2.count', -1) do
      delete hjump_head2_url(@hjump_head2)
    end

    assert_redirected_to hjump_head2s_url
  end
end
