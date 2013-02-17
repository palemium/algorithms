a = [3, 8, 2, 5, 1, 4, 7, 6]

def sort! a, l = 0, r = a.length
  unless r - l < 2
   index_of_pivot =  partition! a, l, r
   sort! a, l, index_of_pivot
   sort! a, index_of_pivot + 1, r
  end
end

def sort a, *others
  d = a.dup
  sort! d, *others
  d
end

def partition! a, l = 0, r = a.length
  pivot_index = choose_pivot(a,l,r)
  if pivot_index != l
    t = a[l]
    a[l] = a[pivot_index]
    a[pivot_index] = t
  end

  p = a[l]
  i = l + 1
  for j in l + 1 ... r
    if a[j] < p
      #swap a[i] and a[j]
      t = a[j]
      a[j] = a[i]
      a[i] = t

      i = i + 1
    end
  end
  #swap a[l] and a[i - 1]
  t = a[l]
  a[l] = a[i - 1]
  a[i - 1] = t
  i - 1
end

def choose_pivot a, l = 0, r = a.length
  (l...r).to_a.sample
end

puts (sort a).inspect
