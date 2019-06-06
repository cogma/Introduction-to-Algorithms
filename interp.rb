def exp(s,bnd)
  if s.class == Array then
    if s[0] == "+" then
      exp(s[1],bnd)+exp(s[2],bnd)
    else
      "undefined"
    end
  else
    if s.class == String then
      bnd[s]
    else
      s
    end
  end
end
def interpSub(s,bnd)
  if s[0] == "=" then
    bnd[s[1]]= exp(s[2],bnd)
  elsif s[0] == "pr" then
    print exp(s[1],bnd),"\n"
  end
end
def interp(s,bnd)
  for i in 0..s.length()-1 do
    interpSub(s[i],bnd)
  end
end
bnd = Hash.new
interp(eval(ARGV[0]),bnd)
# '[["=","x",2],["pr","x"],["=","y",["+","x",1]],["pr","y"]]'

