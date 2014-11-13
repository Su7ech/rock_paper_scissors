CHOICES = {'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors'}

def say(msg)
  puts "=> #{msg}"
end

def display_winning_msg(winning_choice)
  case winning_choice
  when 'r'
    say "Rock breaks Scissors!"
  when 'p'
    say "Paper covers Rock!"
  when 's'
    say "Scissors cuts Paper!"
  end
end

say "Welcome to my Rock, Paper, Scissors game!!!"

loop do
  #player makes a pick
  begin
    say "Please enter 'r' for Rock, 'p' for Paper, or 's' for Scissors:"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
  #computer picks
  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    say "It's a tie!!!"
  elsif (player_choice == 'r' && computer_choice == 's') || (player_choice == 'p' && computer_choice == 'r') || (player_choice == 's' && computer_choice == 'p')
    display_winning_msg(player_choice)
    say "You have won!!!"
  else
    display_winning_msg(computer_choice)
    say "The computer has won, better luck next time!"
  end

  say "Would you like to play again? (y/n)"
  break if gets.chomp.downcase == 'n'
end

say "Thanks for playing!"