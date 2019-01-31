def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 input = gets
 input = input.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  card_total = (deal_card + deal_card)
  print display_card_total(card_total)
  return card_total
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    current_card_total += deal_card
    return current_card_total
  elsif input == "s"
    return current_card_total
  else 
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  total = hit?(current_card_total)
    until total > 21
      hit?(current_card_total)
    end
  end_game(current_card_total)
end
    
