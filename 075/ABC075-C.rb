s = gets.chomp.split(" ")
$n = s[0].to_i
$m = s[1].to_i
$list = Array.new($n).map{Array.new($n,false)}
$visited = Array.new($n,false)

for i in 0..$m-1 do
    s = gets.chomp.split(" ")
    a = s[0].to_i-1 
    b = s[1].to_i-1
    $list[a][b] = $list[b][a] = true
end

def check( i=0 )
    $visited[i] = true
    for j in 0..$n-1 do
        check(j) if $list[i][j] and $visited[j] == false
    end

    if $visited.count {|num| num == false } >= 1 then return false
    else return true end
end

count = 0
for i in 0..$n-1 do
    for j in 0..i do
        if $list[i][j] then
            $list[i][j] = $list[j][i] = false
            $visited.map!{false}
            count += 1 if check() == false
            $list[i][j] = $list[j][i] = true
        end
    end
end

puts count