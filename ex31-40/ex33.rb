#################################################################
i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers << i

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

numbers.each {|num| puts num }
#################################################################

def my_new_script(index, incrementer, upper_bound)
  numbers = []
  while index < upper_bound
    numbers << index
    index += incrementer || 0
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{index}"
  end
  puts "The numbers: "
  numbers.each {|x| puts x }
end
#################################################################
numbers = []
(0..6).each do |num|
  numbers << num
  puts "Numbers: now: ", numbers
  puts "At the bottom i is: #{num}"
end
puts "The numbers: "
numbers.each {|x| puts x }
#################################################################