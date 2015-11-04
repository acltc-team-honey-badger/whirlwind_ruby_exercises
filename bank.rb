accounts = []

2.times do 
  puts "Give me a first name"
  first_name = gets.chomp
  puts "Give me a last name"
  last_name = gets.chomp
  while true
    puts "Give me an email address"
    email = gets.chomp
    break if email.include?("@") && email[-4..-1] == ".com"
    puts "NOPE."
    puts "Give give me a real email address!!!!"
  end
  serial_number = rand.to_s[2..12]
  account = {first_name: first_name, last_name: last_name, email: email, serial_number: serial_number}
  accounts << account
end

puts "Here are your accounts:"
accounts.each do |account|
  puts "This"
  puts "FIRST NAME #{account[:first_name]}"
  puts account[:last_name]
  puts account[:email]
end
p accounts

puts "Give me an account number:"
account_number = gets.chomp

accounts.each do |account|
  if account_number == account[:serial_number]
    puts account[:first_name]
    puts account[:last_name]
    puts account[:email]
  end
end
