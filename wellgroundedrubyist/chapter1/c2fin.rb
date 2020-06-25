puts "Reading Celsuis temparature value from data file..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius.to_i * 9 / 5) + 32
puts "The number is " + num
print "Result: "
puts fahrenheit

