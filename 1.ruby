# Ruby Hash - Enumerables: Given a hash, return the average grade for the students.

hash = {
  john: 60,
  ali: 65,
  ahmed: 70,
  yo: 75
}

new_val = 0

hash.each_value{ |e| new_val = new_val + e}


puts "the avarage is :: " , new_val / hash.length 