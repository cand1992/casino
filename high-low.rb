require 'colorize'

class High_Low
    attr_accessor : amount
    def initialize(amount)
        @amount = amount
    end

    def play
      if @amount == 0
        puts "You must have money in order to play!"
      
      else
          puts "How much do you want to bet?"
            bet = gets.strip.to_i
            if bet > @amount
                puts "You cannot bet more than you have in your wallet!"
            play

            elsif bet <= 0
              puts "You cannot bet a negative amount or nothing!"
              play

            else
              puts "Choose a card"
              puts "Choose High or Low"

      
    end

