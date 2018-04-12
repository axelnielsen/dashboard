require 'test_helper'

class ThrowingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @throwing = throwings(:one)
  end

  test "should get index" do
    get throwings_url
    assert_response :success
  end

  test "should get new" do
    get new_throwing_url
    assert_response :success
  end

  test "should create throwing" do
    assert_difference('Throwing.count') do
      post throwings_url, params: { throwing: { achievement: @throwing.achievement, an: @throwing.an, club: @throwing.club, country: @throwing.country, fift: @throwing.fift, first: @throwing.first, fourth: @throwing.fourth, name: @throwing.name, number: @throwing.number, op: @throwing.op, place: @throwing.place, reg: @throwing.reg, seconnd: @throwing.seconnd, sixth: @throwing.sixth, third: @throwing.third } }
    end

    assert_redirected_to throwing_url(Throwing.last)
  end

  test "should show throwing" do
    get throwing_url(@throwing)
    assert_response :success
  end

  test "should get edit" do
    get edit_throwing_url(@throwing)
    assert_response :success
  end

  test "should update throwing" do
    patch throwing_url(@throwing), params: { throwing: { achievement: @throwing.achievement, an: @throwing.an, club: @throwing.club, country: @throwing.country, fift: @throwing.fift, first: @throwing.first, fourth: @throwing.fourth, name: @throwing.name, number: @throwing.number, op: @throwing.op, place: @throwing.place, reg: @throwing.reg, seconnd: @throwing.seconnd, sixth: @throwing.sixth, third: @throwing.third } }
    assert_redirected_to throwing_url(@throwing)
  end

  test "should destroy throwing" do
    assert_difference('Throwing.count', -1) do
      delete throwing_url(@throwing)
    end

    assert_redirected_to throwings_url
  end
end
