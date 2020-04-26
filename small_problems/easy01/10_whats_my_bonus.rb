# take a pos int (salary) and a boolean.  if true, 
# bonus is 50% of salary.  if false, bonus is 0

def bonus(int, bool)
  if bool
    bonus = int * 0.5
  else
    bonus = 0
  end
  bonus.to_i
end

puts bonus(42000, false)
