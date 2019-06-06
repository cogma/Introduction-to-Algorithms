def primes(n)
  a=Array.new(n)
  a[0]=1
  a[1]=1
  for i in 2..n
    if a[i]==nil
      a[i]=0
      if i!=n
        for k in i+1..n
          if k%i==0
            a[k]=1
          end
        end
      end
    end
  end
  a
end
