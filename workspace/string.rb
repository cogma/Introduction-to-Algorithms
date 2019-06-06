def longer(s,t)
  if s.length()==t.length()
    "same"
  else
    if s.length()<t.length()
      t
    else
      s
    end
  end
end

def trim(s)
  s[1..s.length()-2]
end

def upsidedown(s)
  if s.length%2==0
    s[s.length()/2..s.length()-1]+s[0..s.length()/2-1]
  else
    s[(s.length()+1)/2..s.length()-1]+s[(s.length()-1)/2]+s[0..(s.length-3)/2]
  end
end
