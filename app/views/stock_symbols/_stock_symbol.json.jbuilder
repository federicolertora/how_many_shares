json.extract! stock_symbol, :id, :dollar_amount, :stock_price, :created_at, :updated_at
json.url stock_symbol_url(stock_symbol, format: :json)
