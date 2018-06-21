require_relative '../config/environment'
# $prompt = TTY::Prompt.new
require_relative 'ux_methods'

Buyer.where(playing?: true).destroy_all
Asset.delete_all
CryptoTrade.delete_all

welcome_message
main_menu
introduction
name_getter
asset_getter
turn_method(1)
event
turn_method(2)
event
turn_method(3)
event
calculate_score
end_game
