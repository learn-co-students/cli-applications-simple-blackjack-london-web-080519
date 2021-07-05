def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def hit?
  prompt_user
  reply = get_user_input
  if reply == 'h'
    c = deal_card
    p c
  elsif reply != 's'
    invalid_command
  end
  display_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def use_while(x)
  puts "your first number is #{x}."
  until x > 22
    y = 1 + rand(11)
    print "Your new card is #{y}. "
    x = x + y
      if x < 21
        puts "Your new total is #{x}"
      else
        puts "Your new total is #{x}. Your cards have exceeded the limit."
      end
  end
end

use_while(4)