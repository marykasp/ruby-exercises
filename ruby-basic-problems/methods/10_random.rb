names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

# write method name and activity so that they take an array and return a random value from it
def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))

def random(arr)
  arr.sample
end

puts sentence(random(names), random(activities))
