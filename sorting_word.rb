# • Write the program we talked about at the very beginning of this chapter.
# Hint: There's a lovely array method which will give you a sorted version of an array:  sort. Use it!
# • Try writing the above program without using the sort method. A large part of programming is solving problems, so get all the practice you can!

def merge (left, right)
  n_arr = []
  k=0
  left.each do |n|
    while ( k<=(right.length-1) && n.to_s >=right[k].to_s )
      n_arr << right[k]
      k += 1
    end
    n_arr << n
  end
  n_arr << right[k..right.length-1] unless k > right.length
  return n_arr
end

def merge_sort arr
  length = arr.length
  if length ==1
   return arr
  else
    left = merge_sort arr[0..(length/2-1)]
    right = merge_sort arr[length/2..length]
    merge left, right
  end
end

puts "Give me words and I will sort them for you!. Please enter nothing when you are done"
word = "?"
words = []
while word != ""
word = gets.chomp
words << word if word !=""
end

 sorted_list = merge_sort words
puts sorted_list



