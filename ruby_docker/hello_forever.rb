loop do
	puts 'What is your name'
	name = gets.chomp
	puts "Hello #{name} \ndo you like Docker?(yes/no)"
	answer = gets.chomp
	if answer.eql? "yes"
		puts "Hei #{name}! Thats cool"
	else
		puts "OK Goodbye!"
		break
	end
end
