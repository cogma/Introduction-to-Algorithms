def combination(n,k)
  if k==0
    1
  else
    if k>n
      0
    else
      combination(n-1,k-1)+combination(n-1,k)
    end
  end
end

def combination_loop(n,k)
  c=make2d(n+1,n+1)
  for i in 0..n
    c[i][0]=1
    for j in 1..(i-1)
      c[i][j]=c[i-1][j-1]+c[i-1][j]
    end
    c[i][i]=1
  end
  c[n][k]
end
