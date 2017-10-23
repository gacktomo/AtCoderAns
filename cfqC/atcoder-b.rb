n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
$count = 0

def check( t, i, arr )
  for j in (-1..1) do
    total = t
    total *= arr[i] + j
    if i == arr.length-1 
      $count +=1 if total % 2 == 0
    else
      check( total, i+1, arr )
    end
  end
end

check( 1, 0, arr )

puts $count