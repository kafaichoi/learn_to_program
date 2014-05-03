puts "Hey Give me a starting year and ending year and I will show you all of the leap years between them"
puts "So first starting year?"
start_year = gets.chomp.to_i
puts "And ending year?"
end_year = gets.chomp.to_i
c_year = start_year
puts 'So here is the list of leap year'
while c_year <= end_year
  if ( c_year%400 ==0)
    puts c_year
  elsif ( c_year %4 ==0 )&& ! (c_year%100 ==0)
    puts c_year
  end
  c_year += 1
end
