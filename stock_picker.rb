def stock_picker(a)
    profit = a[1] - a[0]  
    l = a.length
    buydt = 0
    seldt = 1  
    out = []
    a.each_with_index do |e, index|
      buydt = index
      seldt = index
      if a[index+1]
        prof = a[index+1] - e
        seldt = index+1
      else
        next
      end  
      a[index+1, l-1].each_with_index do |d, index2|
        if prof < (d - e) 
          prof = (d - e) 
          seldt = index2+2
        end
      end
      if prof > profit
        profit = prof 
        out = [buydt, seldt]
      end
    end
    out
end
