load("./make2d.rb")
load("./max.rb")

def align(a,b)
  m = a.length
  n = b.length
  c = make2d(m+1,n+1)
  for i in 0..m
    c[i][0] = 0
  end
  for j in 0..n
    c[0][j] = 0
  end
  for i in 1..m
    for j in 1..n
      if a[i-1] != b[j-1] then
        c[i][j] = max(c[i-1][j],c[i][j-1])
      else
        c[i][j] = max(c[i-1][j],max(c[i][j-1],1+c[i-1][j-1]))
      end
    end
  end
  c[m][n]
end
