def wind_chill_index(t,v)
 35.74+0.6215*t-35.75*(v**0.16)+0.4275*t*(v**0.16)
end

def wind_chill_index_celsius(t,v)
  s=9/5.0*t+32
  w=v*60*60/1609.0
 (wind_chill_index(s,w)-32)*5/9.0
end
