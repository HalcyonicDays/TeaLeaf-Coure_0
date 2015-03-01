# Question 1
################################################################

#1.upto(10) {|i| print "The Flintstones Rock!\n"; i.times {print " "}}
# => ^not techincally two lines^
#1.upto(10) {|i| puts "The Flintstones Rock!".rjust(21+i)}


# Question 2
################################################################
str = "The Flintstones Rock"
hash = {}
str.each_char do |char|
  next if char == " "
  hash.key?(char) ? hash[char] += 1 : hash[char] = 1
end
#p hash

# Question 3
################################################################
#puts "the value of 40 + 2 is " + (40 + 2)
# error due to treating fixnum (40 +2) as string
#puts "the value of 40 + 2 is #{(40 + 2)}"
#puts "the value of 40 + 2 is " + (40 + 2).to_s


# Question 4
################################################################
ary = [1, 2, 3, 4]
ary.each do |item|
#  p item
  ary.shift(1)
end
#p ary
# print 1, remove 1, go to next element which is now 3, 
# prinr 3, remove 3, go to next element (end). Array is [3,4]

ary = [1, 2, 3, 4]
ary.each do |item|
#  p item
  ary.pop(1)
end
# p ary
# print 1, remove 4, print 2, remove 3,  end.  Array is [1,2]



# Question 5
################################################################
def factors(number)
  dividend = number
  divisors = []
  while (dividend > 0) do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end


# Question 6
################################################################
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end
# the above modified the passed array, "buffer"
def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end
# the above returns a new array called "buffer" after being passed "input_array"


# Question 7
################################################################
def fib(first_num, second_num)
# def fib(first_num, second_num, limit=15) is more versatile.
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0,1)
#puts "result is #{result}"

# limit needs to be declared in the method (or passed in) so that the method can access the variable.



# Question 8
################################################################
def titleize(words)
  title = ""
  arr = words.split(" ")
  arr.each {|elm| title << elm.downcase.capitalize! << " "}
  title.chop
end
words = "this is a test"
#puts titleize(words)

# words.split(" ").map{}.join is smoother.
# I need to remember that array.map creates a new array by modifying each element
# I *really* need to remember that array.join turns an array into a string.

# Question 9
################################################################
class String
  def lim_text(max=32)
    words = self.length > max ? (self[0,(max-3)] + "...") : self
    words
  end
end

characters = [
    {:character=>"Batman", :real_name=>"Bruce Wayne", :description=>"Comic book superhero who fights crime while wearing a costume loosely based on a bat"}, 
    {:character=>"Robin", :real_name=>"Dick Grayson", :description=>"Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes"},
    {:character=>"Commisioner Gordon", :real_name=>"James Gordon", :description=>"Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone"}, 
    {:character=>"Alfred", :real_name=>"Alfred", :description=>"The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman"}
    ]

#characters.each do |elm|
#  elm.each {|key, val| puts val.lim_text}
#end

#characters.each do |elm|
#  elm.values.map{|val| puts val.lim_text}
#end

#characters.each do |elm|
#  p elm.values.map{|val| val.lim_text}.join("    ")
#end

# Right.  I really need to remember about .map and .join
# Even so, I think I like my versions better this time.

# Question 10
################################################################
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}
hash.each do |key, val|
  case 
  when (0...25) === val["age"]
    val["demographic"] = "kid"
  when (25...55) === val["age"]
    val["demographic"] = "adult"
  when val["age"] >= 55
    val["demographic"] = "senior"
  end
end

puts hash
