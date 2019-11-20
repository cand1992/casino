require 'colorize'

require_relative 'player'
# require_relative 'slots'
# require_relative 'craps'

class High_low  
  attr_accessor :amount
    def initialize(amount)
      @amount = amount
    end

    def intro
        puts "\n"
        puts "\n"
        puts "\n"
        puts "\n"
        puts "\n"
        puts "\n"
        file = File.open("ascii_high-low.txt")
        banner = file.read
        puts banner.blue
        puts "\n"
        puts "--------------------".red
        puts "!!WELCOME TO HIGH LOW!!".green
        puts "--------------------".red
        puts "\n"
        puts "Would you like to place a bet?(y/n)"
        
        choice = gets.strip.capitalize
          if choice == "Y"
            play
          elsif choice == "N"
            intro
          else
            puts "Incorrect choice"
            intro
          end
     end
     
     def play
          
     end
end




class High_Low
    attr_accessor : amount
    def initialize(amount)
        @amount = amount
    end

  class Card
    RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A) 
    SUITS = %w(Spade Heart Club Diamond)

    attr_accessor : rank, suit

    def initialize(id)
      self.rank = RANKS[id % 13]
      self.suit = SUITS[id % 4]
    end 
  end
  
  # class Deck
  #   attr_accessor : cards
  #   def initialize
  #     #shuffle array and init each Card
  #     self.cards = (0..51).to_a.shuffle.collect { |id| Card.new(id)}
  #   end
  # end
  # class Array
  #   #knuth-fisher-yates shuffle algorithm
  #   def shuffle!
  #     n = length
  #     for i in 0...n
  #       r = rand(n-i)+i
  #       self[r], self[i] = self[i], self[r]
  #     end
  #     self
  #   end
  #   def shuffle
  #     dup.shuffle!
  #   end


  # d = Deck.new
  # d.cards.each do |card|
  #   puts "#{card.rank} #{card.suit}"
  # end

  #     #create an array listing all 52 cards or do 2 - ace
  #     # make variables of dealer card vs player card
  #     #player_card = array.sample
  #     #dealer_card = array.sample --> will randomize it

  #   class Card
  #     attr_reader :suit, :value
  #       def initialize(suit, value)
  #           @suit = suit
  #           @value = value
  #       end
  #       def value
  #           return 10 if ["J", "Q", "K"].include?(@value)
  #           return 11 if @value == "A"
  #       end
  #       def to_s
  #           "#{@value}-#{suit}"
  #       end
  #   end

  #   class Deck
  #         attr_reader :cards

  #         def initialize
  #           @cards = Deck.build_cards
  #         end

  #         def self.build_cards
  #               cards = []
  #               end
  #               cards.shuffle
  #         end
  #   end
    
    puts "Pick a Card"
      #player gets card from dealer - variable is player_card
      #need the player_card variable

    
      #user case choice of betting high or low, any other text is invalid and will go back to 'bet'
      def bet
        puts "Place your bet. You may choose High or Low."
          puts "High"
          puts "Low"
          puts "Exit"

          user_choice = gets.strip.to_s
          case bet_choice
            when "High"
          end
      end

      #dealer flips next card, the result will either be higher or lower than player card
      #need the dealer_card variable here

      #bet is placed, results will be through game_result
    def game_result
      if high
        @dealer_card > @player_card   
        
      elsif low
        @dealer_card < @player_card
      else
        puts "Try again."
        game_result
      end
    end
    


  #     @player_card = array.sample
  #     @dealer_card = array.sample





    # def play
    #   if @amount == 0
    #     puts "You must have money in order to play!"
      
    #   else
    #       puts "How much do you want to bet?"
    #         bet = gets.strip.to_i
    #         if bet > @amount
    #             puts "You cannot bet more than you have in your wallet!"
    #         play

    #         elsif bet <= 0
    #           puts "You cannot bet a negative amount or nothing!"
    #           play

    #         else
    #           puts "Choose a card, then guess a number between 0 and 24."
    #           elsif
                #   number guessed is higher
                #     puts "You lose!"
                # end   
                # elsif
                # number guessed is lower 
    #   end


