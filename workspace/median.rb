def median(x,y,z)
  if (x<y && y<z)||(z<y && y<x)
    y
  else
    if (y<z && z<x)||(x<z && z<y)
      z
    else
      x
    end
  end
end

def median1(x,y,z)
  if x<y
    if y<z
      y
    else
      if x<z
        z
      else
        x
      end
    end
  else
    if x<z
      x
    else
      if y<z
        z
      else
        y
      end
    end
  end
end
    
def median2(x,y,z)
  if (x<y && y<z)||(z<y && y<x)
    y
  else
    if (y<z && z<x)||(x<z && z<y)
      z
    else
      x
    end
  end
end    
   
def ascending(x,y,z)
  x<y && y<z
end
