def days_of_february(year)
  if year%400==0
    29
  else
    if year%100==0
      28
    else
      if year%4==0
        29
      else
        28
      end
    end
  end
end

def days_of_month(year,month)
  if month==2
    days_of_feburuary(year)
  else
    if month==4||month==6||month==9||month==11
      30
    else
      31
    end
  end
end

def leap_year(y)
  (y%4==0 && y%100!=0)||y%400==0
end

    
