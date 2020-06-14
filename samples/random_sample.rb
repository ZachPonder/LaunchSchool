names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(nam)
  return nam[rand(nam.count)]
  # a better way: nam.sample
end

def activity(act)
  # return act[rand(act.count)]
  act.sample
end

def sentence(name, activity)
  puts "#{name} went #{activity} today"
end

puts sentence(name(names), activity(activities))
