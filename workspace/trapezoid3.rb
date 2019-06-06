def f(x)
  x**2
end

def trapezoid3(xs,xe,n)
  deltax = (xe-xs)*1.0/n
  sum = (f(xs)+f(xe))/2.0
  for i in 1..(n-1)
    sum = sum + f(xs+i*deltax)
  end
  deltax * sum
end
