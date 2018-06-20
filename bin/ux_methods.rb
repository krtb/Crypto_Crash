require_relative '../app/models/coin_value.rb'
require_relative '../app/models/asset.rb'
require_relative '../app/models/buyer.rb'
require_relative '../app/models/seller.rb'
require_relative '../app/models/crypto_trade.rb'

def welcome_message
  puts " ██████╗██████╗ ██╗   ██╗██████╗ ████████╗ ██████╗          ██████╗██████╗  █████╗ ███████╗██╗  ██╗
██╔════╝██╔══██╗╚██╗ ██╔╝██╔══██╗╚══██╔══╝██╔═══██╗        ██╔════╝██╔══██╗██╔══██╗██╔════╝██║  ██║
██║     ██████╔╝ ╚████╔╝ ██████╔╝   ██║   ██║   ██║        ██║     ██████╔╝███████║███████╗███████║
██║     ██╔══██╗  ╚██╔╝  ██╔═══╝    ██║   ██║   ██║        ██║     ██╔══██╗██╔══██║╚════██║██╔══██║
╚██████╗██║  ██║   ██║   ██║        ██║   ╚██████╔╝███████╗╚██████╗██║  ██║██║  ██║███████║██║  ██║
 ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝        ╚═╝    ╚═════╝ ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                                                                                   "
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

def current_player
  player = Buyer.find_by(playing?: true)
  player
end

def asset_getter
  puts "Please enter 3 valuable things to you:"
  asset_one = gets.chomp
  asset_two = gets.chomp
  asset_three = gets.chomp
  current_player.declare_assets(asset_one, asset_two, asset_three)
end

def turn_method
  prompt = TTY::Prompt.new
  turn = prompt.select('Please select from the following options:', %w(
    Buy_Crypto_Coin
    View_Assets
    Sell_Assets
    View_My_Coins
    End_Turn
    ))


    if turn == "View_Assets"
      current_player.view_assets
      turn_method
    elsif turn == "Sell_Assets"
      prompt = TTY::Prompt.new
      asset = prompt.ask("Which asset would you like to Sell?")
      puts "Oof, okay, you sold your #{asset}"
      current_player.sell_assets(asset)
      turn_method
    elsif turn == "View_My_Coins"
      check = current_player.my_wallet
      if check.empty?
        puts "You have no coins!"
        turn_method
      end
    else turn == "End_Turn"

    end
end

def end_game
  
end
