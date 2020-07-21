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

def caesar_cipher(plaintext, shiftAmount)
  normalisedShift = shiftAmount % 26
  ciphertext = ""

  plaintext.each_byte do |c|
    uppercase = c > 64 && c < 91
    lowercase = c > 96 && c < 123

    if uppercase || lowercase
      c += normalisedShift

      outOfRange = c > 90 && uppercase || c > 122 && lowercase
      c -= outOfRange ? 26 : 0;
    end

    ciphertext += c.chr
  end

  return ciphertext
end

puts "Ciphertext with shift value #{n} : "
puts caesar_cipher(input, n)