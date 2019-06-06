include(Math)

def det(a,b,c)
 b**2-4*a*c
end

def solution1(a,b,c)
 (-b+sqrt(det(a,b,c)))/2.0/a
end

def solution2(a,b,c)
  s=-b/2.0/a
  s-sqrt(det(a,b,c))/2.0/a
end

def quadratic(a,b,c,x)
 a*x**2+b*x+c
end

def solutions(a,b,c)
  if a==0 && b==0
    0
  else
    if a==0 || b**2-4*a*c==0
      1
    else
      if  b**2-4*a*c>0
        2
      else
        0
      end
    end
  end
end

def solve1(a,b,c)
  if a==0
    -c/b
  else
    (-b+sqrt(b**2-4*a*c))/2.0/a
  end
end

    
