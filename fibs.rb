def fibs(num)
  arr = [0, 1]
  return arr[0, num] if num <= 2

  arr.push(arr[-1] + arr[-2]) until arr.length == num
  arr
end

fibs(1)
