def within_range(a,i)
  0<=i && i<a.length()
end

def within_image(img,x,y)
  0<=y && y<img.length() && 0<=x && x<img[y].length()
end
