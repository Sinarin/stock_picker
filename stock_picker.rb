def stock_picker(stock_history)
  best_days = [0, 0]
  for i in 0..(stock_history.length - 1)
    for j in i..(stock_history.length - 1)
      price_diff = stock_history[j] - stock_history[i]
      current_diff = stock_history[best_days[1]] - stock_history[best_days[0]]
      if price_diff > current_diff
        best_days = [i, j]
      end
      print "i:#{i} j:#{j}\n"
    end
  end
  p best_days
end

  stock_picker([17,3,6,9,15,8,6,1,17])