puts "What is your first name?"
name = gets.chomp
puts "What is your middle name?"
name += " " + gets.chomp
puts "What is your last name?"
name += " " + gets.chomp
puts "Nice to meet you #{name}"

puts "What is your  favourite number?"
fav_num = gets.chomp
puts "I have a suggestion that #{fav_num.to_i + 1} might be better!"
