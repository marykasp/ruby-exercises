daylight = [true, false].sample

def time_of_day(boolean)
  puts boolean ? "It's daytime!" : "It's nighttime!"
end

time_of_day(daylight)
