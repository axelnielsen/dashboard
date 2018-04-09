require 'test_helper'

class AthleteseriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @athleteseries = athleteseries(:one)
  end

  test "should get index" do
    get athleteseries_index_url
    assert_response :success
  end

  test "should get new" do
    get new_athleteseries_url
    assert_response :success
  end

  test "should create athleteseries" do
    assert_difference('Athleteseries.count') do
      post athleteseries_index_url, params: { athleteseries: { idAthlete: @athleteseries.idAthlete, idSerie: @athleteseries.idSerie, idStatus: @athleteseries.idStatus } }
    end

    assert_redirected_to athleteseries_url(Athleteseries.last)
  end

  test "should show athleteseries" do
    get athleteseries_url(@athleteseries)
    assert_response :success
  end

  test "should get edit" do
    get edit_athleteseries_url(@athleteseries)
    assert_response :success
  end

  test "should update athleteseries" do
    patch athleteseries_url(@athleteseries), params: { athleteseries: { idAthlete: @athleteseries.idAthlete, idSerie: @athleteseries.idSerie, idStatus: @athleteseries.idStatus } }
    assert_redirected_to athleteseries_url(@athleteseries)
  end

  test "should destroy athleteseries" do
    assert_difference('Athleteseries.count', -1) do
      delete athleteseries_url(@athleteseries)
    end

    assert_redirected_to athleteseries_index_url
  end
end
