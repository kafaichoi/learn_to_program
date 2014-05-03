puts "Hey SONNY!"
num_bye = 0
while num_bye <3
   saying = gets.chomp
  if saying == "BYE"
    num_bye += 1
  elsif
    saying.upcase == saying
    year = 1930 +( rand 21)
    puts "NO, NOT SINCE #{year}"
    num_bye = 0
  else
    puts "HUH? SPEAK UP, SONNY!"
    num_bye = 0
  end
end
