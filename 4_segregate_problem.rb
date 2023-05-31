# Given an array, sort the negative numbers and the positive nunmber without its orders

# Given an array, sort the positive numbers using divide and conqure algorthim


def mergeSort(arr, low, high)
  if low < high - 1
    mid = (low + high) / 2
    mergeSort(arr, low, mid)
    mergeSort(arr, mid, high)
    merge(arr, low, high, mid)
  end
end

def merge(arr, low, high, mid)
  
  left_arr = arr[low .. mid -1] 
  right_arr = arr[mid  ... high ]

  i = 0
  j = 0
  k = low

  while i < left_arr.length && left_arr[i] < 0
      arr[k] = left_arr[i]
      i+= 1
      k+= 1
  end

  while j < right_arr.length && right_arr[j] < 0
      arr[k] = right_arr[j]
      j+= 1
      k+= 1
  end

  while i < left_arr.length 
    arr[k] = left_arr[i]
    i+= 1
    k+= 1
  end  
  
  while i < left_arr.length 
    arr[k] = right_arr[j]
    j+= 1
    k+= 1
  end
end

original_array = [-2,54,-33,22,-1,1,0,10,8,3]

puts "Before:: #{original_array}"
mergeSort(original_array, 0, original_array.length)

puts "After:: #{original_array}"
