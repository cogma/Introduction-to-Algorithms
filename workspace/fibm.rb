def matmul(a,b)
  
  [[a[0][0]*b[0][0]+a[0][1]*b[1][0],a[0][0]*b[0][1]+a[0][1]*b[1][1]],[a[1][0]*b[0][0]+a[1][1]*b[1][0],a[1][0]*b[0][1]+a[1][1]*b[1][1]]]

end



def matsquare(a)
  
  matmul(a,a)

end



def matpower(a,n)
  
  if n==0
    
    [[1,0],[0,1]]
  
  else
    
    if n%2==0
      
      matsquare(matpower(a,n/2))
    
    else
      
      matmul(a,matpower(a,n-1))
    
    end
  
  end

end



def fibm(k)
  
  matmul(matpower([[1,1],[1,0]],k-1),[[1,0],[1,0]])[0][0]
    
end


def fibm6(k)
  fibm(k)%1000000
end
