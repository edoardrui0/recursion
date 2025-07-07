def merge_sort(arr)
  if arr.length <= 1
    arr
  else
    mid = arr.length / 2.floor
    left = merge_sort(arr[0..mid - 1])
    right = merge_sort(arr[mid..])
    merge(left, right)
  end
end

def merge(arr1, arr2)
  result = []
  result << (arr1.first < arr2.first ? arr1.shift : arr2.shift) until arr1.empty? || arr2.empty?
  # until arr1.empty? || arr2.empty?
  #   if arr1.first < arr2.first
  #     result << arr1.first
  #     arr1.shift
  #   else
  #     result << arr2.first
  #     arr2.shift
  #   end
  # end
  result + arr1 + arr2
end

arr1 = [3, 2, 1, 13, 8, 5, 0, 1]
arr2 = [105, 79, 100, 110]

merge_sort(arr2)
