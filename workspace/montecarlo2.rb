def montecarlo2(n)
  m=0
  for i in 1..n
    x=3*rand() # random number in [0,1)
    y=9*rand()
    if x*x>y
      m = m + 1
    end
  end
  27.0*m/n
end
