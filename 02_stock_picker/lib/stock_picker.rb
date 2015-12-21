def stock_picker(prices)
  buy = prices[0]
  sell = prices[1]
  prices.each do |price_buy|
    prices[prices.index(price_buy) + 1..-1].each do |price_sell|
      if price_buy - price_sell < buy - sell
        buy = price_buy 
        sell = price_sell
      end 
    end
  end
  [prices.index(buy), prices.index(sell)]
end