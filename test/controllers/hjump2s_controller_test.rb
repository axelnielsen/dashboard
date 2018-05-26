require 'test_helper'

class Hjump2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hjump2 = hjump2s(:one)
  end

  test "should get index" do
    get hjump2s_url
    assert_response :success
  end

  test "should get new" do
    get new_hjump2_url
    assert_response :success
  end

  test "should create hjump2" do
    assert_difference('Hjump2.count') do
      post hjump2s_url, params: { hjump2: { achievement: @hjump2.achievement, an: @hjump2.an, athlete: @hjump2.athlete, club: @hjump2.club, hjump_head2_id: @hjump2.hjump_head2_id, place: @hjump2.place, region: @hjump2.region } }
    end

    assert_redirected_to hjump2_url(Hjump2.last)
  end

  test "should show hjump2" do
    get hjump2_url(@hjump2)
    assert_response :success
  end

  test "should get edit" do
    get edit_hjump2_url(@hjump2)
    assert_response :success
  end

  test "should update hjump2" do
    patch hjump2_url(@hjump2), params: { hjump2: { achievement: @hjump2.achievement, an: @hjump2.an, athlete: @hjump2.athlete, club: @hjump2.club, hjump_head2_id: @hjump2.hjump_head2_id, place: @hjump2.place, region: @hjump2.region } }
    assert_redirected_to hjump2_url(@hjump2)
  end

  test "should destroy hjump2" do
    assert_difference('Hjump2.count', -1) do
      delete hjump2_url(@hjump2)
    end

    assert_redirected_to hjump2s_url
  end
end
