  def wrap(string, number)

    line_length = 0
    space_character = nil

    string.each_char.each_with_index do |character, index|
      if character.match(" ")
        space_character = index
      end
      if line_length == number
        if !space_character.nil?
          puts string[space_character] = "\n"
          line_length = index 
        else
          puts string[index, 0] = "\n"
        end
      else
        line_length += 1
      end
    end
    puts string
  end

puts "give a length"
length = gets.chomp.to_i
puts "give a string"
string = gets.chomp

wrap(string, length)





