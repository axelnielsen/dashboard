require 'test_helper'

class SerieDetallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serie_detalle = serie_detalles(:one)
  end

  test "should get index" do
    get serie_detalles_url
    assert_response :success
  end

  test "should get new" do
    get new_serie_detalle_url
    assert_response :success
  end

  test "should create serie_detalle" do
    assert_difference('SerieDetalle.count') do
      post serie_detalles_url, params: { serie_detalle: { an: @serie_detalle.an, atleta: @serie_detalle.atleta, club: @serie_detalle.club, lugar: @serie_detalle.lugar, marca: @serie_detalle.marca, pais: @serie_detalle.pais, pista: @serie_detalle.pista, region: @serie_detalle.region } }
    end

    assert_redirected_to serie_detalle_url(SerieDetalle.last)
  end

  test "should show serie_detalle" do
    get serie_detalle_url(@serie_detalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_serie_detalle_url(@serie_detalle)
    assert_response :success
  end

  test "should update serie_detalle" do
    patch serie_detalle_url(@serie_detalle), params: { serie_detalle: { an: @serie_detalle.an, atleta: @serie_detalle.atleta, club: @serie_detalle.club, lugar: @serie_detalle.lugar, marca: @serie_detalle.marca, pais: @serie_detalle.pais, pista: @serie_detalle.pista, region: @serie_detalle.region } }
    assert_redirected_to serie_detalle_url(@serie_detalle)
  end

  test "should destroy serie_detalle" do
    assert_difference('SerieDetalle.count', -1) do
      delete serie_detalle_url(@serie_detalle)
    end

    assert_redirected_to serie_detalles_url
  end
end
