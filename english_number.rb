def englishNumber number
  if number < 0  #  No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  #  No more special cases!  No more returns!

  numString = ''  #  This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  #  "left" is how much of the number we still have left to write out.
  #  "write" is the part we are writing out right now.
  #  write and left... get it?  :)
  left = number
  write = left/1000
  left  = left - write*1000  #  Subtract off those hundreds.

  if write > 0
    thousands  = englishNumber write
    numString = numString + thousands + ' thousdans'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/100
  left  = left - write*100

  if write > 0
    hundreds = englishNumber write
    numString = numString + hundreds + ' hundreds'
      if left > 0
        numString = numString + ' '
      end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left  #  How many ones left to write out?
  left  = 0     #  Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

if __FILE__ == $PROGRAM_NAME

puts "Give me a number"
num = gets.chomp.to_i
puts englishNumber num

end
