
# Question 1
##################################################################
arr = [1, 2, 2, 3]
arr.uniq

puts arr
# prints out [1,2,2,3]
# however, arr.uniq /returns/ [1,2,3]
  # irb confirms this.  BAM.

# oops.  okay, it actually prints out
# 1
# 2
# 2
# 3


# Question 2
##################################################################
#Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
# Generally, a method ending in '?' evauates to True/False, and a '!' method changes the object it's applied but this isn't necessarily true.  Methods like "pop" do not have a '!' and it's just convention rather than a hand-and-fast rule.

#1. what is != and where should you use it?
  # this means "not equal."  It is use in comparisons.

#2. put ! before something, like !user_name
  # means "not <object>"

#3. put ! after something, like str.gsub()!
  # It might permanently modify the object, rather than simply returning/evaluating to the modified object.
  # or it might do nothing special at all, if you're the sort of person that just likes to give methogs emphatic names.

#4. put ? before something
  # I'm not sure.  I'll study up on it.
  # I'm not convinced this was addressed in the solution.

#5. put ? after something
  # Can be a True/False, such as Str.Start_With? or the tertiary-something, or what I call the "Excel If" since it's <logical test> ? <result/action if True> : <result/action if False>

#6. put !! before something, like !!user_name
  # Double-Not.  Super-Caution.  This is exciting!
  # None of these are true.  Does anyone do "!!" ?  It looks suspicious...
  # Whoa.  It turns an object into their boolean counter-part, huh?  But wait.... Wait!
  # Doesn't this turn every object into "True?" since all Ruby objects are inherently "truthy?"
  # Wouldn't 'Nil' be the only False?  To the irb!
  # Also anything already false would be false.
  # Also Also, you can stack "!" as high as you want, like Buffalo buffalo buffalo Buffalo buffalo and odd number of "!" become false, and an even number become true, for things like a = 5 and !a


# Question 3
##################################################################

str = "Few things in life are as important as house training your pet dinosaur."
str.gsub!("important","urgent")
puts str
# woo-hoo! first try!
# to be fair, I looked at the quiz 1, like, 2 weeks before formally starting the TeaLeaf Prep, but I still correctly guessed how .gsub worked on my first try, which is what I'm really celebrating.



# Question 4
##################################################################

arr = [1, 2, 3, 4, 5]

arr.delete_at(1) # this would delete element 1, aka "2" since we start counting at 0
arr.delete(1)    # this would delete the element "1" so actual, real number 1.
# are either of these permanently destructive?  I'm pretty sure 'delete' is always for-real.

puts arr # should be [3,4,5], but individually in a column.
# Nailed it!


# Question 5
##################################################################

# Programmatically determine if 42 lies between 10 and 100.
def unnecessary(x)
  puts "#{x} is between 10 and 100" if (x < 100 && x > 10)
  puts "the number is: #{x}"
end

unnecessary(42)
unnecessary(9)
unnecessary(402)

puts "this returned true for 42" if (11...100).cover?(42)
puts "this returned true for 9" if (11...100).cover?(9)
puts "this returned true for 402" if (11...100).cover?(402)
# well sure, once you give a hint, anyone can go to "http://ruby-doc.org//core-1.9.3/Range.html"

# Question 6
##################################################################

str = "and seven years ago..."
pre = "Four score and "

puts pre + str

str = "and seven years ago..."
str.insert(0,pre)
# note: str.prepend(pre) would also work
# note: str.unshift(pre) is not a thing.  Nice try, though.
puts str


# Question 7
##################################################################

def add1(num)
  num + 4
end

num = 2

how_deep = "num"
10.times{ how_deep.gsub!("num", "add1(num)") }
p how_deep # "add1(add1(add1(add1(add1(add1(add1(add1(add1(add1(num))))))))))"
#              42   38   34   30   26   22   18   14   10    6   2
# That was kind of tedious.
# I'd rather learn about the Ruby 'eval' method.
puts eval(how_deep)  # 42



# Question 8
##################################################################

arr = ["Fred", "Wilma"]
arr << ["Barney", "Betty"]
arr << ["BamBam", "Pebbles"]

p arr.flatten!


# Question 9
##################################################################
arr_hash = {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}
arr_new = Array.new

arr_new << "Barney" << arr_hash["Barney"]
p arr_new
# interesting.  You can use arr_hash.assoc(key) to search by key and return a 2-element array containing the key and value.

# Turn this into a hash where the keys are names and the values are the array index.
arr = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
nhash = Hash.new
arr.each {|elm| nhash[elm] = arr.index(elm)}
p nhash
# I see the solution is a mirror-image approach to my own solution.  Bonus points for putting mine in one line?
