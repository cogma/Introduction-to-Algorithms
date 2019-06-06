def income_tax(income)
  if income<=195
    income*5/100.0
  else
    if income<=330
      (income-195)*10/100.0+income_tax(195)
    else
      if income<=695
        (income-330)*20/100.0+income_tax(330)
      else
        if income<=900
          (income-695)*23/100.0+income_tax(695)
        else
          if income<=1800
            (income-900)*33/100.0+income_tax(900)
          else
            (income-1800)*40/100.0+income_tax(1800)
          end
        end
      end
    end
  end
end
