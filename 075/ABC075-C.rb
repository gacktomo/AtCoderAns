s = gets.chomp.split(" ")
n = s[0].to_i
m = s[1].to_i
list = Array.new(n).map{Array.new()}

for i in 0..m-1 do
    s = gets.chomp.split(" ")
    a = s[0].to_i
    b = s[1].to_i
    list[a-1].push(b)
    list[b-1].push(a)
end

def check(i, j, n, m, list)
    clist = []
    for i2 in 0..n-1 do
        for j2 in 0..list[i].size-1 do
            if i!=i2 and j!=j2 then
                clist[list[i2][j2].to_i] = true
            end
        end
    end

    if clist.count {|item| item == nil } >= 1 then
        return false
    else return true 
    end
end

count = 0
for i in 0..n-1 do
    for j in 0..list[i].size-1 do
        count += 1 if check( i, j,n,m, list) == false
    end
end

puts count

