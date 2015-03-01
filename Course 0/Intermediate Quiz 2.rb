# Question 1
################################################################
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
  }

sum = []
ans = 0

hash.each_value.select { |val| val.value?("male")}.each { |elm| sum << elm["age"]}

sum.each{|elm| ans += elm}
#puts ans



# Question 2
################################################################
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
}
i = 0
hash.each do |key, val| 
  val["name-sort"] = key.length
  val["index-sort"] = i; i += 1
end
# that's unreal. I thought for sure there would be a better way than what I did.

#hash.to_a.sort{|a, b| a[1]["name-sort"] <=> b[1]["name-sort"] }.each{ |elm| puts elm }
#hash.to_a.sort{|a, b| a[1]["index-sort"] <=> b[1]["index-sort"] }.each{ |elm| puts elm }


# Question 3
################################################################
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

#hash.each { |key, val| puts "#{key} is a #{val["age"]}-year-old #{val["gender"]}"}

# After spending so much time on 1 and 2, it feels wrong that question 3 took under a minute.


# Question 4
################################################################
def tricky_method(a_string_param, an_array_param)
  a_string_param.concat(" " + "rutabega")
  an_array_param << "rutabega"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

#puts "My string looks like this now: #{my_string}"
#puts "My array looks like this now: #{my_array}"

# ah, the goal was to take the guesswork out of it?
# but it still doesn't return what I would expect...


# Question 5
################################################################
str = "Humpty Dumpty sat on a wall."
str = str.chop.split.reverse.join(" ").capitalize.concat(".")
#puts str
# If you're going to do something; go all the way.


# Question 6
################################################################
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

 #p answer - 8

# this is a trick question.  We are printing "answer" when "new_answer" was the affect value.


# Question 7
################################################################
munster_hash = { 
     "Herman" => { "age" => 32, "gender" => "male" }, 
     "Lily" => { "age" => 30, "gender" => "female" }, 
     "Grandpa" => { "age" => 402, "gender" => "male" }, 
     "Eddie" => { "age" => 10, "gender" => "male" },
     "Marilyn" => { "age" => 23, "gender" => "female"}
    }

def mess_with_demographics(demo_hash)
    demo_hash.values.each do | family_member |
      family_member["age"] += 42
      family_member["gender"] = "other"
    end
end

mess_with_demographics(munster_hash)
# this will change the values in the original hash because the hash itself was passed 
# as a parameter and not abstracted away, eg. new_hash = mess_with_demogaphics(original_hash)

# Question 8
################################################################
class String
  def pretty_short_version
    pretty = ""
    if self.length > 32 then
      pretty_arr = self.split(" ")
      pretty_arr.each do |word|
        pretty.concat(word + " ") unless (pretty.length + word.length) > 29
        pretty.empty? ? pretty = self[0,29] : pretty = pretty
      end
      return pretty + "..."
    else
      return self
    end
  end
end

short_ver = ("thisisonlyatest.Donotbealarmedabcdefghijklmonp").pretty_short_version
#puts short_ver

# Question 9
################################################################
# "paper"
# another exercise which took seconds, as compared to the minutes of the previous ones.


# Question 10
################################################################
# "no"
# this one was also very brief.




