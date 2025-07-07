# [0, 1].include?(num) ? num : fibs(num - 1) + fibs(num - 2)

def fibs_rec(num)
  puts "This was printed recursively"
  if num.zero?
    []
  elsif num == 1
    [0]
  elsif num == 2
    [0, 1]
  else
    prev = fibs_rec(num - 1)
    next_num = prev[-1] + prev[-2]
    prev + [next_num]
  end
end

fibs_rec(8)
