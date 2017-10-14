s = gets.chomp.split(" ")
h = s[0].to_i
w = s[1].to_i
list = []

for i in 0..h-1 do
    list[i] = gets.chomp.split("")
end

for i in 0..h-1 do
    for j in 0..w-1 do
        if list[i][j] == '.' then
            count = 0
            count += 1 if 0<=i-1 and 0<=j-1 and list[i-1][j-1] == "#"
            count += 1 if 0<=i-1 and list[i-1][ j ] == "#"
            count += 1 if 0<=i-1 and j+1<w and list[i-1][j+1] == "#"
            count += 1 if 0<=j-1 and list[ i ][j-1] == "#"
            count += 1 if j+1<w and list[ i ][j+1] == "#"
            count += 1 if i+1<h and 0<=j-1 and list[i+1][j-1] == "#"
            count += 1 if i+1<h and list[i+1][ j ] == "#"
            count += 1 if i+1<h and j+1<w and list[i+1][j+1] == "#"
            print count
        else
            print list[i][j]
        end
    end
    puts ""
end
