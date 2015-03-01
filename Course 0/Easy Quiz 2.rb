# Question 1
###############################################################
puts "question 1"
hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
if hash.has_key?("Spot") then
  puts hash["Spot"] == "" ? "Spot does not have an age" : "Spot's age is #{hash["Spot"]}"
else
  puts "Spot is not in the hash"
end
puts "all done."
# Note: .key?() and .has_key?() are equivalent
# Note: .member?(key) can also search for keys.


# Question 2
###############################################################

hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
sum = 0

hash.each { |key, val| sum = sum + val }
puts sum



# Question 3
###############################################################
hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
hash.delete_if{|key, val| val >= 100}
p hash


# Question 4
###############################################################
str = "The Munsters are creepy in a good way."
p str.capitalize # I realized after the fact that this is unnecessary.
p str.swapcase
p str.downcase
p str.upcase


# Question 5
###############################################################
hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
rest = { "Marilyn" => 22, "Spot" => 237 }

hash.merge!(rest)
p hash


# Question 6
###############################################################
hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
min = 1000
hash.each do |key, val|
  min = val < min ? val : min
end
puts min

# hash.values.min is much more elegant.


# Question 7
###############################################################
str = "Few things in life are as important as house training your pet dinosaur."
p str.include?("Dino")



# Question 8
###############################################################
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
answer = arr.index {|elm| elm[0,2] == "Be"}
puts answer



# Question 9
###############################################################
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.map! {|elm| elm[0,3]}
p arr


# Question 10
###############################################################

# See Question 9 for solution