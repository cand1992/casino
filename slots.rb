require 'colorize'

class Slots
	attr_accessor :amount
	def initialize(amount)
		@amount = amount
	end
	def play
		
		if @amount == 0
			puts "You must have money in order to play!"
		else
			slot_icons = [ 'cherry'.colorize(:red), 'apple'.colorize(:green), 'blueberry'.colorize(:blue), 'banana'.colorize(:yellow) ]
			puts "How much do you want to bet?"
			bet = gets.strip.to_i
			if bet > @amount
				puts "You cannot bet more than you have in your wallet!"
				play
			elsif bet <= 0
				puts "You cannot bet a negative amount or nothing!"
				play
			else
				slot1 = slot_icons.sample
				slot2 = slot_icons.sample
				slot3 = slot_icons.sample
				puts "#{slot1} - #{slot2} - #{slot3}"
				if slot1 == slot2 && slot1 == slot3
					winnings = 0
					winnings = bet * 2
					puts "You win! You won $#{bet}!"
					@amount -= bet
					@amount += winnings
					puts "You currently have $#{@amount} to play with."
					puts "Do you want to play again? y/n"
					if gets.strip == "y"
						play
					end
				else
					puts "You lost your $#{bet} bet!"
					@amount -= bet
					if @amount == 0
						puts "You have run out of money to play with!"
					else
						puts "Play again? y/n"
						if gets.strip == "y"
							play
						end
					end
				end
			end
		end
	end
end

