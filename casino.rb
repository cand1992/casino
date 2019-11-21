require 'pry'
require_relative 'player'
require_relative 'slots'
require_relative 'craps'
require_relative 'high_low_game'


class Casino
	attr_accessor :bank_amount

	def initialize(bank_amount)
		@bank_amount = bank_amount
	end

	def intro
		puts "Welcome to the Ruby Nuggets Casino!"
		puts "Please enter your name:"
		player_name = gets.strip.capitalize
		puts "How much do you want to play with today, the house limit is $#{@bank_amount}."
		if gets.strip.to_i > 5000 || gets.strip.to_i < 0
			puts "Sorry you must enter an amount between $0 and $5000. Try again!"
			intro
		else
		player_wallet = gets.strip.to_i
		end
		@new_player = Player.new(player_name, player_wallet)
		puts "Okay, #{@new_player.name}, you have borrowed $#{@new_player.wallet}"
		game_menu
	end

	def game_menu
		puts "Which game would you like to play?"
		puts "1) Slots"
		puts "2) High/Low"
		puts "3) Craps"
		puts "4) Check wallet amount"
		puts "5) Exit"
		user_selection
	end

	def user_selection
		option = gets.strip.to_i
		case option
		when 1
			slots_game = Slots.new(@new_player.wallet)
			slots_game.play
			@new_player.wallet = slots_game.amount
			game_menu
		when 2
			high_low_game = HighLow.new(@new_player.wallet)
			high_low_game.play
			@new_player.wallet = high_low_game.amount
			game_menu
		when 3
			craps_game = Craps.new(@new_player.wallet)
			craps_game.intro
			@newplayer.wallet = slots_game.amount
			game_menu
		when 4
			puts "You have $#{@new_player.wallet} in your wallet."
			game_menu
		else
			exit
		end
	end

end

casino = Casino.new(5000)
casino.intro