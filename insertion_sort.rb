a = [5, 2, 4, 6, 1 , 3]
for j in 1...a.length
    key = a[j]
    i = j - 1
    while i >= 0 and a[i] > key
        a[i + 1] = a[i]
        i = i - 1
    end
    a[i + 1] = key
end
        