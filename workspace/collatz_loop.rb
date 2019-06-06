def tnpo(n)
  if n%2==0
    n/2
  else
    3*n+1
  end
end

def collatz_loop(n)
  s=0
  m=n
  while m!=1
    m=tnpo(m)
    s=s+1
  end
  s
end
