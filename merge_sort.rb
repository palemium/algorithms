a = [5,6,8,7,4,3,1,2]

def sort a
  return a if a.length < 2
  a1 = a[0          ... a.length/2]
  a2 = a[a.length/2 ... a.length]
  r1 = sort a1
  r2 = sort a2
  combine r1, r2
end

def combine a, b
  r = []
  i = 0
  j = 0
  while r.length < (a.length + b.length)
    x = i < a.length ? a[i] : Float::INFINITY
    y = j < b.length ? b[j] : Float::INFINITY
    if x < y
      r << a[i]
      i += 1
    else 
      r << b[j]
      j += 1
    end
  end
  r
end

puts (sort a).inspect
