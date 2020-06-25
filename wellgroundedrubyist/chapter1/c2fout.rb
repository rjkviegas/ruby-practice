print "Hello. Please enter a Celsius value: "
celsius = gets.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'"
fh = File.new("temp.out", "w") # "w" specifies the file MODE, so "w" is for WRITE
fh.puts fahrenheit # this method call has the effect of printing the value of variable fahrenheit to the file for which fh is a WRITE HANDLE
fh.close
