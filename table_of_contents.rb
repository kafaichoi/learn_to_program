puts "Table of Contents".center(50)

arr = [ "Chapter 1:", "Numbers", "page 1", "Chapter 2:", "Letters", "page 72", "Chapter 3:", "Variables", "page 118"]

k=0
while k <= arr.length-1
  case k%3
  when 0
    print arr[k].ljust(15)
  when 1
    print arr[k].center(10)
  when 2
    puts arr[k].rjust(25)
  end
  k+=1
end
