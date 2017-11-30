=begin
Here is the criteria:

	I hate my mate Steve: so much so that my hatred spills over to anyone with a first name beginning with 'S'. I want a program that, when anyone types their name in, shouts at them if their name begins with an 'S'. Anyone else should just get a friendly greeting.

=end

def hate_steve(name)
  puts name.downcase.chr == 's' ? name.upcase : 'Hi ' + name.capitalize
end

def get_name
  print 'What is your name: '
  name = gets.chomp
  hate_steve(name)
end

get_name
