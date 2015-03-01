# Question 1
################################################################
if false
  n = “hello world”
end

n
# I expect an error for an undefined variable.
# but I'm wrong.  Apparently saying a variable *will* have a value even if it never gets assigned one
# is enough for Ruby to know it exists, albeit with a 'nil' value.  Neat stuff.


# Question 2
################################################################
my_hash = {a: 'hi'}
n = my_hash[:a]
n << ' there'

#puts n  #  => "hi there"
#puts my_hash # => {a: 'hi there'}

# reminder:  [ + 'there' ] does not modify the original object; [ << 'there' ] does modify the original object.


# Question 3
################################################################
  def mess_with_vars_A(one, two, three)
    one = two
    two = three
    three = one
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars_A(one, two, three)

#  puts "one is: #{one}"
#  puts "two is: #{two}"
#  puts "three is: #{three}"
  # values will be left unchanged because the values inside the method stay in the method.

    def mess_with_vars_B(one, two, three)
      one = "two"
      two = "three"
      three = "one"
    end

    one = "one"
    two = "two"
    three = "three"

    mess_with_vars_B(one, two, three)

#    puts "one is: #{one}"
#    puts "two is: #{two}"
#    puts "three is: #{three}"
# values will be left unchanged because the values inside the method stay in the method.
    
    def mess_with_vars_C(one, two, three)
      one.gsub!("one","two")
      two.gsub!("two","three")
      three.gsub!("three","one")
    end

    one = "one"
    two = "two"
    three = "three"

    mess_with_vars_C(one, two, three)

#    puts "one is: #{one}"       # => two
#    puts "two is: #{two}"       # => two
#    puts "three is: #{three}"   # => three
# at least, that's the implication from the previous lesson.
# if not for that, I'd expect all three to be permanently modified.
# in fact, forget that.  They should *all* be permanently modified, but
# the object.id for one won't change.
# no wait, that's not any better....


# Question 4
################################################################
ary = [1, 2, 3, 4]
da_lamb = lambda { |input| input *= 10 }
ary.each &da_lamb
#puts ary.inspect

    da_string = "10"
  #  puts da_string.object_id
    ary = [1, 2, 3, 4]
    da_lamb = lambda { |input| da_string.gsub!(/\d0/,(input * 10).to_s) }
    ary.each &da_lamb
  #  puts da_string

  #  da_string = ""
  #  ary = [1, 2, 3, 4]
  #  da_lamb = lambda { |input| da_string << (input * 10).to_s }
  #  ary.each &da_lamb
   # puts da_string

    da_string = ""
    ary = [1, 2, 3, 4]
    da_lamb = lambda { |input| da_string = da_string + (input * 10).to_s }
    ary.each &da_lamb
    #puts da_string

    da_string = "original"
    ary = [1, 2, 3, 4]
    def call_me(da_string, ary)
      da_string = "not so original"
      da_lamb = lambda { |input| da_string = da_string + (input * 10).to_s }
      ary.each &da_lamb
    end
    call_me(da_string, ary)
  #  puts da_string

# Question 5
################################################################
def gen_uuid
  arr = [('a'..'f'), (0..9)].map{|i| i.to_a}.flatten
  uuid = ""
  8.times {uuid << arr[rand(16)].to_s} ; uuid << "-"
  3.times {4.times {uuid << arr[rand(16)].to_s} ; uuid << "-"}
  12.times {uuid << arr[rand(16)].to_s}
  uuid
end

#puts gen_uuid

def gen_uuid_2
  arr = [('a'..'f'), (0..9)].map{|i| i.to_a}.flatten
  uuid = ""
  section = [8,4,4,4,12]
  section.each do |elm|
    elm.times {uuid << arr[rand(16)].to_s}
    uuid << "-" unless elm == section[-1]
  end
  uuid
end

#puts gen_uuid_2
# Question 6
################################################################
str = "Herman Munster is a BIG BIG man."

class String
  def each_word!
    arr = self.split(/\W/) # split according to non-word characters
    arr.map!{|elm| yield elm}  # this is clever (and necessary).  This is what allows the 'each' method to act on each passed parameter.
    self.replace(arr.join(" ") + ".") # I understand why the punctuation variable was used, but I don't see how that variable isn't cheating.
    self                              # to that end, I feel [ + "."], while cheaty, is not so different from [ + punctuation] since it only
  end                                 # works because we *know* beforehand that the only punctuation is a period at the end.
end

str.each_word!{|elm| elm.reverse}
#p str

# the method I originally wrote applied a "reverse every word" method to the caller string.  This is because I misread the task :-(


# Question 7
################################################################

# Solution 1) Use goddamned Regular Expressions. I know they're not straightforward, but I have to suffer and learn them, so you damn well have to, too, Ben!  Also, they may as well be magic.
# Solution 2) start with IP = false
# add a check that [dot_separated_words] is an array with exactly 4 elements; eg. if dot_separated_words.size(or .length) != 4 IP = false
# ensure that no element is greater than 3 characters.  dot_separated_words.each { |elm| IP = false if elm.length > 3}
# instead of break, use IP = false if !is_a_number(word)
# return IP
# IP can be set to true at the beginning, but I personally don't like the idea of "this must be an IP address unless I can prove it isn't."
# the method should be convinced the caller is true; not assume the caller is true and try to convince itself that the caller is false.


