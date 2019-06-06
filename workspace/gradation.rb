def gradation(n)
  a = Array.new(n)
  for i in 0..(n-1)
    a[i] = i*1.0/n
  end
  a
end
