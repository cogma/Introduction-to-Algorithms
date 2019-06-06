def length3(a,x)
  if x==0 && a.length()==1
    1
  else
    if 0<x && x<a.length()-1
      3
    else
      2
    end
  end
end

def sum(a,x)
  if x==0 && a.length()==1
    a[x]
  else
    if x==0
      a[x]+a[x+1]
    else
      if x==a.length()-1
        a[x-1]+a[x]
      else
        a[x-1]+a[x]+a[x+1]
      end
    end
  end
end

def array_average(a,x)
  sum(a,x)*1.0/length3(a,x)
end

    
