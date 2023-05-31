# This problem involves finding the number of integers with a value greater than 5.
# In Ruby speak, you could put it like this: Given an array, count how many items are greater than 5.

my_array = [1,-2,-3,-4,5,9]
my_array.each{|positive_nums| puts positive_nums if positive_nums > 0}


