a = gets.chomp.to_i
b, c = gets.chomp.split.map(&:to_i)
text = gets.chomp
total = a + b + c
puts "#{a + b + c}" + " " + text 