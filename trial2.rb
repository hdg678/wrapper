
class Wrapper
  
  def initialize (string, length)
    @string = string
    @length = length 
  end   

  def wrap
    space_index = []
    lines = 1
    add_length = @length
    while @string.length / lines >= @length do
    @string.each_char.with_index do |character, index|
      if character == " " && index <= add_length -1
        space_index.push(index)
      end
    end  
    previous_space = space_index.max
       @string.each_char.with_index do |c, i| 
          if i == previous_space
            # c.sub!(" ","\n")
            @string[previous_space] = "\n"
            lines += 1
            add_length += @length
          end
        end     
    end
    puts @string      
  end   
end 

# previous_space = space_index.max 

puts "give a length"
length = gets.chomp.to_i
puts "give a string"
string = gets.chomp

wrapping = Wrapper.new(string, length)
wrapping.wrap



