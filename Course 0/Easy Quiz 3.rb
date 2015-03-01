# Question 1
################################################################
arr = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Is this really much easier?



# Question 2
################################################################
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr << "Dino"
#p arr


# Question 3
################################################################
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr << "Dino" << "Hoppy"
#p arr

arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.push("Dino","Hoppy")
#p arr

# arr.concat(%w(Dino Hoppy)) is also an option.


# Question 4
################################################################
str = "Few things in life are as important as house training your pet dinosaur."
str = str[0,str.index("house")]
#puts str



# Question 5
################################################################
# count for character 't'
str = "The Flintstones Rock!"
#puts (str.split("t").length) -1
# Yes, I know this is silly, but at least it doesn't mutate the string or occupy a variable.



# Question 6
################################################################
str1 = "Fred"
str2 = "Barney"

#puts str1.length <=> str2.length
# str1.length <=> str2.length
# str1.size <=> str2.size
#puts str1.count("a-z") <=> str2.count("a-z") 
# .size and .length are the same, but .count counts the number of characters occurring in a string and takes paramters to measure.


# Question 7
################################################################
title = "Flintstone Family Members"
# Of course there's the outright silly...
  spaces = (40 - title.length)/2
  spaces.times {title = " " + title + " "}
# but that's not even a little practical.
#puts title

title = "Flintstone Family Members"
#puts title

#puts title.center(40)

# Question 8
################################################################
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.sort!{|x,y| x.length <=> y.length}
#p arr


# Question 9
################################################################
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.sort!{|x,y| y.length <=> x.length}
#p arr

arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr = arr.sort{|x,y| x.length <=> y.length}.reverse
#p arr


# Question 10
################################################################
arr = %w( fred Barney Wilma betty BamBam Pebbles)
p arr.sort
p arr.sort{|x,y| x.downcase <=> y.downcase}

# or this: arr.sort!{ |a, b| a.casecmp(b) }


