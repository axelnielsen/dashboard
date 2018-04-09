require 'test_helper'

class DisciplineChampionshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discipline_championship = discipline_championships(:one)
  end

  test "should get index" do
    get discipline_championships_url
    assert_response :success
  end

  test "should get new" do
    get new_discipline_championship_url
    assert_response :success
  end

  test "should create discipline_championship" do
    assert_difference('DisciplineChampionship.count') do
      post discipline_championships_url, params: { discipline_championship: { idChampionship: @discipline_championship.idChampionship, idDiscipline: @discipline_championship.idDiscipline } }
    end

    assert_redirected_to discipline_championship_url(DisciplineChampionship.last)
  end

  test "should show discipline_championship" do
    get discipline_championship_url(@discipline_championship)
    assert_response :success
  end

  test "should get edit" do
    get edit_discipline_championship_url(@discipline_championship)
    assert_response :success
  end

  test "should update discipline_championship" do
    patch discipline_championship_url(@discipline_championship), params: { discipline_championship: { idChampionship: @discipline_championship.idChampionship, idDiscipline: @discipline_championship.idDiscipline } }
    assert_redirected_to discipline_championship_url(@discipline_championship)
  end

  test "should destroy discipline_championship" do
    assert_difference('DisciplineChampionship.count', -1) do
      delete discipline_championship_url(@discipline_championship)
    end

    assert_redirected_to discipline_championships_url
  end
end
