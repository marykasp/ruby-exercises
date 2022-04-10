a = "Xyzzy"

def my_value(b)
  b = "yzzyX"
end

my_value(a)
puts a

# outputs "Xyzzy"
# Again both method scoped variable b and outer scoped variable a reference the same string object when the my_value method is called. Fi we modify the string inside the method then that modification is reflected in a.
# *In this case no destructive method is called on the string object, instead the method scoped variable b is reassigned to a new string object. Now a and b reference different string objects in memory. So at the end of my_value, b references the string 'yzzyX', while a remains unchanged.
