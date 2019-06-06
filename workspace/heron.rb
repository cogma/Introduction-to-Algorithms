include(Math)
def heron(a,b,c)
  s=0.5*(a+b+c)
  sqrt(s*(s-a)*(s-b)*(s-c))
end
