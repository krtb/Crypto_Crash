

def welcome_message
  puts "Welcome to Crypto_Crash"
end

def main_menu
  prompt = TTY::Prompt.new
  answer = prompt.select('Choose an option from the main menu:', %w(Play High_Score Credits))

  if answer == "Credits"
    puts "Credits..."
    sleep(1)
    main_menu
  elsif answer == "High_Score"
    puts "High_Score..."
    sleep(1)
    main_menu
  else
    puts "Let's play!"
    sleep(1)
  end
end

def name_getter
  puts "What's your name?"
  user_name = gets.chomp
  Buyer.create(name: user_name, cash: 1000, playing?: true, score: nil)
  "Hi, #{user_name}, let's get started!"
end
