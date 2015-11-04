names = []

while true
  puts "Give me a name"
  name = gets.chomp
  break if name == "done"
  names << name
end

names.shuffle!

while names.any?
  if names.length == 3
    group = names.pop(3)
  else
  group = names.pop(2)
  end
  puts "Group: #{group.join(", ")}"
end