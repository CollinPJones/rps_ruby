# Rock, Paper, Scissors

game = ["Rock", "Paper", "Scissors"]

lose = "You lose. Loser."

win = " Winner, winner, chicken dinner!"

puts "Welcome to Rock, Paper, Scissors!"
puts ""

while true
  while true
    puts "What\'s your move, sucker?"
    user_move = gets.chomp.downcase
    if (user_move == "2") || (user_move == "r") || (user_move == "rock")
      user_move = "Rock"
      break
    elsif (user_move == "1") || (user_move == "p") || (user_move == "paper")
      user_move = "Paper"
      break
    elsif (user_move == "3") || (user_move == "s") || (user_move == "scissors")
      user_move = "Scissors"
      break
    elsif user_move == "q" || user_move == "quit"
      user_move = "quit"
      break
    else
      puts "Invalid input, ya\' fool!"
      puts ""
    end
  end

  if user_move == "quit"
    break
  end

  computer_move = game.sample

  puts "You played #{user_move}, and the computer played #{computer_move}."

  result = [user_move, computer_move]



  if user_move == computer_move
    puts "It\'s a tie!"
  elsif result == ["Rock", "Paper"] || result == ["Paper", "Scissors"] || result == ["Scissors", "Rock"]
    puts lose
  elsif result == ["Scissors", "Paper"] || result == ["Paper", "Rock"] || result == ["Rock", "Scissors"]
    puts win
  end
end
