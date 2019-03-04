def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      return true if year % 400 == 0
    return false
    end
  return true
  else return false
  end
end