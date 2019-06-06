def divisible(x,y)
  x%y==0
end

def sod(k,n)
  if n>=2
    if divisible(k,n)
      sod(k,n-1)+n
    else
      sod(k,n-1)
    end
  else
    1
  end
end

def prime(n)
  sod(n,n)==n+1
end

def nod_loop(k,n)
  s=0
  for i in 1..n
    if k%i==0
      s=s+1
    end
  end
  s
end

def nop_loop(n)
  s=0
  for i in 1..n
    if prime(i)
      s=s+1
    end
  end
  s
end

def msod_loop(n)
  s=0
  for k in 1..n
    if sod(k,k)>s
      s=sod(k,k)
    end
  end
  s
end

def np_loop(n)
  while !prime(n)
    n=n+1
  end
  n
end

def nth_prime_loop(p,n)
  i=p
  while nop_loop(i)-nop_loop(p)<n
    i=i+1
  end
  i
end

def perfect_loop(n)
  sod(n,n)==2*n
end

def next_perfect_loop(n)
  while !perfect_loop(n)
    n=n+1
  end
  n
end

  
