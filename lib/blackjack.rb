def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
 # card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
 # puts "Initial round: Your cards are #{a} and #{b}. "
  display_card_total(sum)
  return sum
end

def hit?(number)
    prompt_user
    reply = get_user_input
      if reply == "s"
    #    p display_card_total(number)
        result = number
      elsif reply == 'h'
        new_hand = deal_card  
        new_total = number + new_hand
      #  puts "Your new card is #{new_hand}. "
      #  puts "Your new total is #{new_total}"
        number = new_total
        result = number
      elsif
        invalid_command
        prompt_user
        result = number
 end
 result
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  running_total = initial_round 
  while running_total < 22 
    running_total = hit?(running_total) 
    display_card_total(running_total)
  end
 end_game(running_total)
end
