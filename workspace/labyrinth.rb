load("./make2d.rb")

def max(x,y)

  if y < x
    x

  else

    y

  end

end

def labyrinth(award)
  gain=make2d(award[0].length(),award.length())
  gain[0][0]=award[0][0]
  for j in 1..award.length()-1
    gain[0][j]=gain[0][j-1]+award[0][j]
  end
  for i in 1..award[0].length()-1
    gain[i][0]=gain[i-1][0]+award[i][0]
  end
  for i in 1..award[0].length()-1
    for j in 1..award.length()-1
      gain[i][j]=max(gain[i][j-1],gain[i-1][j])+award[i][j]
    end
  end
  gain[award[0].length()-1][award.length()-1]
end