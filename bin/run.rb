require_relative '../config/environment'
# $prompt = TTY::Prompt.new
require_relative 'ux_methods'

Buyer.delete_all
Asset.delete_all

welcome_message
main_menu
name_getter
asset_getter
turn_method
calculate_score
end_game
