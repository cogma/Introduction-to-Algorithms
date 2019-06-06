def factorial_loop(n)
  s=1
  for i in 1..n
    s=s*i
  end
  s
end

def power_loop(x,n)
  s=1
  for i in 1..n
    s=s*x
  end
  s
end

def taylor_e_loop(x,n)
  s=0
  for k in 0..n
    s=s+power_loop(x,k)*1.0/factorial_loop(k)
  end
  s
end
