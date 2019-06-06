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

def gd(k,n)
  if divisible(k,n)
    n
  else
    gd(k,n-1)
  end
end

def prime2(n)
  gd(n,n-1)==1
end

def nod(k,n)
  if n==1
    1
  else
    if k%n==0
      nod(k,n-1)+1
    else
      nod(k,n-1)
    end
  end
end

def nop(n)
  if n==1
    0
  else
    if prime(n)
      nop(n-1)+1
    else
      nop(n-1)
    end
  end
end

def msod(n)
  if n==1
    1
  else
    if msod(n-1)<sod(n,n)
      sod(n,n)
    else
      msod(n-1)
    end
  end
end

def np(n)
  if prime(n)
    n
  else
    np(n+1)
  end
end

def nth_prime(p,n)
  if n==0
    p
  else
    nth_prime(np(p+1),n-1)
  end
end

def perfect(n)
  sod(n,n)==2*n
end

def next_perfect(n)
  if perfect(n)
    n
  else
    next_perfect(n+1)
  end
end
