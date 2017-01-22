# class Wrapper
	
	def wrap(length, string)
		if length >= 5
			line = string.chars.each_slice(length).map(&:join)
			puts line
		else 
			puts "please give a longer length"	
		end
	end	
# end

#if character is a space move rest down a line, if not then go back one

puts "give a length"
length = gets.chomp.to_i
puts "give a string"
string = gets.chomp

wrap(length,string)
