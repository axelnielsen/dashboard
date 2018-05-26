require 'test_helper'

class JumpHead2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jump_head2 = jump_head2s(:one)
  end

  test "should get index" do
    get jump_head2s_url
    assert_response :success
  end

  test "should get new" do
    get new_jump_head2_url
    assert_response :success
  end

  test "should create jump_head2" do
    assert_difference('JumpHead2.count') do
      post jump_head2s_url, params: { jump_head2: { category_id: @jump_head2.category_id, competition_id: @jump_head2.competition_id, fecha_date: @jump_head2.fecha_date, hora: @jump_head2.hora, sex_id: @jump_head2.sex_id, sport_id: @jump_head2.sport_id, type: @jump_head2.type } }
    end

    assert_redirected_to jump_head2_url(JumpHead2.last)
  end

  test "should show jump_head2" do
    get jump_head2_url(@jump_head2)
    assert_response :success
  end

  test "should get edit" do
    get edit_jump_head2_url(@jump_head2)
    assert_response :success
  end

  test "should update jump_head2" do
    patch jump_head2_url(@jump_head2), params: { jump_head2: { category_id: @jump_head2.category_id, competition_id: @jump_head2.competition_id, fecha_date: @jump_head2.fecha_date, hora: @jump_head2.hora, sex_id: @jump_head2.sex_id, sport_id: @jump_head2.sport_id, type: @jump_head2.type } }
    assert_redirected_to jump_head2_url(@jump_head2)
  end

  test "should destroy jump_head2" do
    assert_difference('JumpHead2.count', -1) do
      delete jump_head2_url(@jump_head2)
    end

    assert_redirected_to jump_head2s_url
  end
end
