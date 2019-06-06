def factorial(n)
  if n==1
    1
  else
    n*factorial(n-1)
  end
end

def power(x,n)
  if n==0
    1
  else
    if n>0
      x*power(x,n-1)
    else
      power(x,n+1)*1.0/x
    end
  end
end

def taylor_e(x,n)
  if n==0
    1
  else
    power(x,n)*1.0/factorial(n)+taylor_e(x,n-1)
  end
end
