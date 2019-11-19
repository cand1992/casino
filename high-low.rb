require 'colorize'

# class High_Low
#     attr_accessor : amount
#     def initialize(amount)
#         @amount = amount
#     end

  class Card
    RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A) 
    SUITS = %w(Spade Heart Club Diamond)

    attr_accessor : rank, suit

    def initialize(id)
      self.rank = RANKS[id % 13]
      self.suit = SUITS[id % 4]
    end 
  end
  
  class Deck
    attr_accessor : cards
    def initialize
      #shuffle array and init each Card
      self.cards = (0..51).to_a.shuffle.collect { |id| Card.new(id)}
    end
  end
  class Array
    #knuth-fisher-yates shuffle algorithm
    def shuffle!
      n = length
      for i in 0...n
        r = rand(n-i)+i
        self[r], self[i] = self[i], self[r]
      end
      self
    end
    def shuffle
      dup.shuffle!
    end


  d = Deck.new
  d.cards.each do |card|
    puts "#{card.rank} #{card.suit}"
  end


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


