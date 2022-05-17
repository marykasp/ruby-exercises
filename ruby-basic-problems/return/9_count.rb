def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# the first line in the times method loop is the puts method, will output 0, 1, 2
# once it gets to the integer object 2 the if clause will evaluate to true and the loop iteration will stop, since return keyword is used and is not passed an expression it will return 'nil'

# on line 10 when the method call is passed as an argument to the p method call, the p method outputs the raw object form of the method's return value which in this case is nil.
