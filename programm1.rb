 def caesar_cipher(string, key)
  caesar_string = ''
  alphabet = ('a'..'z')
  string.each_char do |letter|
    key.times {letter = letter.next} if alphabet.include?(letter.downcase)
    caesar_string << letter[-1]
  end
  caesar_string
end


puts 'Enter the string'
text = gets.chomp
puts 'Enter the key'
key = Integer(gets)

puts caesar_cipher(text, key)



