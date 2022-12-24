def bubble_sort(arr)
  size = arr.size
  loop do
    swapped = false
    (size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

puts bubble_sort([3, 4, 2, 1])
