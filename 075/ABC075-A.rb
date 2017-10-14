s = gets.chomp.split(" ")

puts s[2] if s[0] == s[1]
puts s[1] if s[0] == s[2]
puts s[0] if s[1] == s[2]
