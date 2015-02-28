
#puts "enter a 4-digit number"
#num = gets.chomp.to_i
#
#thou = num / 1000
#hun = (num % 1000) / 100
#tens = (num % 100) / 10
#ones = num.to_s[3]
#
#puts "thousands place: #{thou}"
#puts "hundreds place: #{hun}"
#puts "tens place: #{tens}"
#puts "ones place: #{ones}"


#movies = {matrix: 1999, toystory: 1995, jaws: 1975, anchorman: 2004}
#new_array = Array.new
#movies.each do |key, val|
#puts val
#new_array << val
#end
#puts "now for the array..."
#puts new_array
#new_array.sort.each {|elm| puts elm}



#fac_array = [5,6,7,8]
#fac_array.each do |elm|
#    prod = 1
#    while elm > 0 do
#        prod = prod * elm
#        elm-= 1
#    end
#    puts prod
#end


#puts "enter any three numbers, one at a time."
#float_square = Array.new
#3.times {float_square << gets.chomp.to_f}
#float_square.each {|elm| puts elm**2}


#puts "enters a string"
#str = gets.chomp
#def putcase(item)
#    puts item
#end
#str.length > 10 ? putcase(str.upcase) : putcase(str)


#puts "enter a number"
#num = gets.chomp.to_i

#case
#    when (num >= 0) && (num <= 50)
#        puts "number between 0 and 50, inclusive."
#    when (num > 50) && (num <= 100)
#        puts "number between 51 and 100, inclusive"
#    when num < 0
#        puts "this number is too low."
#    when num > 100
#        puts "this number is greater than 100."
#    else
#        puts "error.  This shouldn't occur."
#end


#arr = [1,2,3]
#new_arr = arr.map {|elm| elm+=2 }
#p arr
#puts "#{new_arr}"

#array = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
#result = array.select {|elm| elm.downcase =~ /lab/}
#puts result
    
#arr = [1,2,3,4,5,6,7,8,9,10]
#new_arr = arr.select { |elm| elm.odd?}
#new_arr.each {|e| puts e}
#arr << 11
#arr.unshift(0)
#arr.pop
#arr.push(3)
#arr.uniq!
#arr.each { |f| puts f}

#hash_1 = Hash.new
#hash_1 = {symbol: "value"}
#puts hash_1
#hash_2 = {}
#hash_2 = {
    #:scary => "lions",
    #:more => "tixcgers"
#}
#hash_2[:ohmy] = "bears"
#puts hash_2

#contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
#contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

#contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
#contacts = {"Joe Smith" => {}}
#contact_type = [:email, :address, :phone]

#nHash = Hash.new
#for e in 0..2 do
#        nHash[contact_type[e]] = contact_data[e]
#end
#puts nHash
#contacts["Joe Smith"] = nHash
#puts contacts

#arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
#arr.delete_if { |elm| (elm.start_with? "s") || (elm.start_with? "w")}
#puts arr

#a = ['white snow', 'winter wonderland', 'melting ice',
#'slippery sidewalk', 'salted roads', 'white trees']
#b = Array.new
#a.each {|elm| b << elm.split(" ")}
#b = b.flatten
#p b















