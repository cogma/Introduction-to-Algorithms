def image_average9(image,x,y)
  (image[y-1][x-1]+image[y][x-1]+image[y+1][x-1]+image[y-1][x]+image[y][x]+image  [y+1][x]+image[y-1][x+1]+image[y][x+1]+image[y+1][x+1])/9.0
end  

def sum3(a,x)
  a[x-1]+a[x]+a[x+1]
end

def array_average3(a,x)
  sum3(a,x)/3.0
end

def within_image(img,x,y)
  0<=y && y<img.length() && 0<=x && x<img[y].length()
end

def image_average(image,x,y)
  sum=0
  count=0
  for s in (x-1)..(x+1)
    for t in (y-1)..(y+1)
      if within_image(image,s,t) then
        sum=sum+image[t][s]
        count=count+1
      end
    end
  end
  return sum*1.0/count
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
        sum3(a,x)
      end
    end
  end
end

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

def array_average(a,x)
  sum(a,x)*1.0/length3(a,x)
end
