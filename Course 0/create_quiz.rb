puts "what will the filename be?"
name = gets
name ||= ""
name = name.chomp!
name.end_with?(".rb") ? name = name : name = name + ".rb"

puts "how many questions?"
q = gets
q ||= ""
q = q.chomp.to_i

puts name

def createquiz(name, n=10)

  File.open(name, 'a') do |f|
    1.upto(n) do |i|
      f << "# Question #{i}\n"
      64.times {f << "#"}
      6.times {f << "\n"}
    end
  end
puts "File, #{name} has been appended."
end

q > 0 ? createquiz(name,q) : createquiz(name)