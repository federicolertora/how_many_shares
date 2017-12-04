require 'test_helper'

class StockSymbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_symbol = stock_symbols(:one)
  end

  test "should get index" do
    get stock_symbols_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_symbol_url
    assert_response :success
  end

  test "should create stock_symbol" do
    assert_difference('StockSymbol.count') do
      post stock_symbols_url, params: { stock_symbol: { dollar_amount: @stock_symbol.dollar_amount, stock_price: @stock_symbol.stock_price } }
    end

    assert_redirected_to stock_symbol_url(StockSymbol.last)
  end

  test "should show stock_symbol" do
    get stock_symbol_url(@stock_symbol)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_symbol_url(@stock_symbol)
    assert_response :success
  end

  test "should update stock_symbol" do
    patch stock_symbol_url(@stock_symbol), params: { stock_symbol: { dollar_amount: @stock_symbol.dollar_amount, stock_price: @stock_symbol.stock_price } }
    assert_redirected_to stock_symbol_url(@stock_symbol)
  end

  test "should destroy stock_symbol" do
    assert_difference('StockSymbol.count', -1) do
      delete stock_symbol_url(@stock_symbol)
    end

    assert_redirected_to stock_symbols_url
  end
end
