require 'test_helper'

class StartFemaleTripleJumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start_female_triple_jump = start_female_triple_jumps(:one)
  end

  test "should get index" do
    get start_female_triple_jumps_url
    assert_response :success
  end

  test "should get new" do
    get new_start_female_triple_jump_url
    assert_response :success
  end

  test "should create start_female_triple_jump" do
    assert_difference('StartFemaleTripleJump.count') do
      post start_female_triple_jumps_url, params: { start_female_triple_jump: { achievement: @start_female_triple_jump.achievement, an: @start_female_triple_jump.an, athlete: @start_female_triple_jump.athlete, club: @start_female_triple_jump.club, country: @start_female_triple_jump.country, femaletriplejumpStart_id: @start_female_triple_jump.femaletriplejumpStart_id, number: @start_female_triple_jump.number, place: @start_female_triple_jump.place, rail: @start_female_triple_jump.rail, region: @start_female_triple_jump.region } }
    end

    assert_redirected_to start_female_triple_jump_url(StartFemaleTripleJump.last)
  end

  test "should show start_female_triple_jump" do
    get start_female_triple_jump_url(@start_female_triple_jump)
    assert_response :success
  end

  test "should get edit" do
    get edit_start_female_triple_jump_url(@start_female_triple_jump)
    assert_response :success
  end

  test "should update start_female_triple_jump" do
    patch start_female_triple_jump_url(@start_female_triple_jump), params: { start_female_triple_jump: { achievement: @start_female_triple_jump.achievement, an: @start_female_triple_jump.an, athlete: @start_female_triple_jump.athlete, club: @start_female_triple_jump.club, country: @start_female_triple_jump.country, femaletriplejumpStart_id: @start_female_triple_jump.femaletriplejumpStart_id, number: @start_female_triple_jump.number, place: @start_female_triple_jump.place, rail: @start_female_triple_jump.rail, region: @start_female_triple_jump.region } }
    assert_redirected_to start_female_triple_jump_url(@start_female_triple_jump)
  end

  test "should destroy start_female_triple_jump" do
    assert_difference('StartFemaleTripleJump.count', -1) do
      delete start_female_triple_jump_url(@start_female_triple_jump)
    end

    assert_redirected_to start_female_triple_jumps_url
  end
end
