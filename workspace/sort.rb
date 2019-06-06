load("./make1d.rb")

def merge(a,b,k)
  c = make1d(k)
  ia=0	
  ib=0
  ic=0
  while ic<k
    if a[ia] < b[ib]
       c[ic] = a[ia]
       ia = ia + 1
       ic = ic + 1
    else
      c[ic] = b[ib]
      ib = ib + 1
      ic = ic + 1
    end
  end
  c
end

def min_index(a,i)
  k=i
  for l in (i+1)..(a.length()-1)
    if a[k]>a[l]
       k=l
    end
  end
  k
end

def simplesort(a,k)
  b=make1d(a.length())
  for i in 0..(a.length()-1)
    b[i]=a[i]
  end
  for i in 0..(k-1)
    m = min_index(b,i)
    v = b[i]
    b[i] = b[m]
    b[m] = v
  end
  b[0..(k-1)]
end

def sort(a,k)
  if a.length()>=2*k
    x=a[0..(a.length()/2-1)]
    y=a[(a.length()/2)..(a.length()-1)]
    s=merge(sort(x,k),sort(y,k),k)
  else
    s=simplesort(a,k)
  end
end
