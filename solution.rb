def stock_picker (arr)
  max = 0
  res = nil

  for i in 0...arr.length
    for j in i + 1...arr.length
      profit = arr[j] - arr[i]
      if profit > max
        max = profit
        res = [i, j]
      end
    end
  end

  return res

end

p stock_picker([17,3,6,9,15,8,6,1,10])  # [1,4]  # for a profit of $15 - $3 == $12