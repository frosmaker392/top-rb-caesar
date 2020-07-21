puts "  ----  Caesar cipher   ----  "

#Get input string
puts "Enter the plaintext to be ciphered : "
input = gets.chomp

#Get n (shift amount), reject if not a valid integer
valid_n = false
n = 0

puts "Enter the shift amount as an integer : "
while !valid_n
  begin
    n = Integer(gets.chomp)
    valid_n = true
  rescue Exception
    puts "n is not an integer! TRY ANOTHER"
  end
end
