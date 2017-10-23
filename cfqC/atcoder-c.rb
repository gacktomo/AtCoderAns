s = gets.chomp.split("")

b = 0
l = s.length-1
count = 0

while b<l do
  if s[b] == s[l] then
    b += 1
    l -= 1
  elsif s[b] == "x" then
    count += 1
    b += 1
  elsif s[l] == "x" then
    count += 1
    l -= 1
  else
    puts -1
    exit(0)
  end
end

puts count