=begin 
def rand_number
  rand(6)+1
end

def dice_game
  run_for = 3
  player1_score, player2_score = 0,0
  until run_for == 0
    p1 = rand_number
    p2 = rand_number
    if p1 == p2
    else
      p1 > p2 ? player1_score += 1 : player2_score += 1
      run_for -= 1
    end
end
puts "Game Ended! Scores are \n Player 1: Won #{player1_score} Round \n Player 2: Won #{player2_score} Round"
puts player1_score > player2_score ? "Congratulations Player 1, You Won!" : "Congratulations Player 2, You Won!"
end
=end

#Above is the origin code, bottom is alternative.

def rand_number
  rand(6) + 1
end

def dice_game
  player1_score = 0
  player2_score = 0
  3.times do
    p1 = rand_number
    p2 = rand_number
    p1 == p2 ? nil : p1 > p2 ? player1_score += 1 : player2_score += 1
  end
  puts "Game Ended! Scores are \n Player 1: Won #{player1_score} Round \n Player 2: Won #{player2_score} Round\n" +
   (player1_score == player2_score ? "It's a DRAW!" :
   	player1_score > player2_score ? 'Congratulations Player 1, You Won!' :
   'Congratulations Player 2, You Won!')
end

dice_game
