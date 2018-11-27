def bubble_sort(arr)
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |x|
      if arr[x] > arr[x+1]
        arr[x], arr[x+1] = arr[x+1], arr[x]
        swap = true
      end
    end
  end
  return arr  
end



def bubble_sort_by(arr)
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |x|
      if yield(arr[x], arr[x+1]) > 0
        arr[x], arr[x+1] = arr[x+1], arr[x]
        swap = true
      end
    end
  end
  p arr  
end

p bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end