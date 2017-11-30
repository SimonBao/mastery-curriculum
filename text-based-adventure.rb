=begin
User starts facing foward
Win condition is two move foward twice
Going right/left = dies and loses (werewolf/golbin)
=end

def name_gen
  char_array = ('A'..'Z').to_a
  num_array = (1..1000).to_a
  name = char_array.sample(3) + num_array.sample(4).flatten
  name.join('')
end

def adventure
  move = []
  name = name_gen
  puts "Hello " + name
  puts "You're stuck in a maze and can only move FOWARD, LEFT, RIGHT"
  2.times do
    print "move direction: "
    move << gets.chomp!
    move[-1] != 'right' ? break : nil
  end
  move.count("right") == 2 ? "#{name} Survived!" : "#{name.upcase} DIED"
end
puts adventure
