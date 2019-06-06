$show_file=0
def show(t,mag=1)
  ysize = t.length()
  xsize = t[0].length()
  q = 256
  qm = q-0.0001
  if t[0][0].class == Array then
    out = open("showppm-temp-" + ($show_file += 1).to_s + ".ppm","w")
    out.print "P3\n"
    out.print xsize*mag,"\n"
    out.print ysize*mag,"\n"
    out.print q,"\n"
    for y in 0..ysize-1
      for j in 1..mag
        for x in 0..xsize-1
          m = t[y][x]
          for i in 1..mag
            out.print "",(qm*m[0]).to_i," ",(qm*m[1]).to_i," ",(qm*m[2]).to_i,"\n"
          end
        end
      end
    end
  else
    out = open("showppm-temp-" + ($show_file += 1).to_s + ".pgm","w")
    out.print "P2\n"
    out.print xsize*mag,"\n"
    out.print ysize*mag,"\n"
    out.print q,"\n"
    for y in 0..ysize-1
      for j in 1..mag
        for x in 0..xsize-1
          m = t[y][x]
          for i in 1..mag
            out.print "",(qm*m).to_i,"\n"
          end
        end
      end
    end
  end
  out.close()
end
