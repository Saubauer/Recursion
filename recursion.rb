def fibs(n)
  arr = []
  (0..n).each do |i|
    arr << i if i < 2
    arr << (arr[i - 1] + arr[i - 2]) if i >= 2
  end
  arr
end

def fibs_rec(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  arr = fibs_rec(n - 1)
  arr << arr[-2] + arr[-1]
end

p fibs(15)
p fibs_rec(15)

def merge_sort(array)
  if array.size < 2
    array
  else
    a, b = array.each_slice((array.size / 2.0).round).to_a
    a = merge_sort(a)
    b = merge_sort(b)
    merge(a, b)
  end
end

def merge(a, b)
  output = []
  while a.size != 0 && b.size != 0
    output << if a[0] <= b[0]
                a.shift
              else
                b.shift
              end
  end
  output << a.shift while a.size != 0
  output << b.shift while b.size != 0
  output
end

array = 15.times.map { |_i| i = rand(1..100) }

p array
p merge_sort(array)
