def power2(n)
  if n==0
    1
  else
    if n>0
      2*power2(n-1)
    else
      power2(n+1)/2.0
    end
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
