def next_line(words, length)
  # return -1 if words.length == 1 
  total_length = 0
  position = 0
   puts "words: #{words.join(' ')}"
  words.each_with_index do |word, index|
    total_length += word.length
    if total_length > length
      position = index
      # break
    end
  end
  return position
end





def wrap(length, string)
  return if string.length == 0
  # puts "string: #{string.inspect}"
  puts "#{string}"
  words = string.split(" ")
  next_position = next_line(words, length)
  return if next_position == -1 

  if next_position == 0
    puts "current_phrase: #{words[0]}"
    next_string = words[1..-1]
  else
    puts "current_phrase: #{words[0..next_position - 1]}"
    next_string = words[next_position .. -1].join(" ")
  end
  wrap(length, next_string.join(' ')) 
end

puts "give a length"
length = gets.chomp.to_i
puts "give a string"
string = gets.chomp

wrap(length, string)













