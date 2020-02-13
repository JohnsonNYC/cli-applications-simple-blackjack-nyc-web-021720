require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  return total 
end

def invalid_command
  puts "Please enter a valid command"
end 

def hit?(total)
prompt_user
input = get_user_input
  if input =='s'
  elsif input == 'h'
     total += deal_card
   else 
     invalid_command
     hit?(total)          #recursion 
  end
  total 
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(total)
    binding.pry
    display_card_total(total)
  end
  end_game(total)
end
    
