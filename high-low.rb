require 'colorize'



class HighLow
	attr_accessor :amount
	def initialize(amount)
    @amount = amount
    @high_or_low = nil
    @bet = nil
  end

  def win
    @amount += @bet
    puts "Congrats you win!"
    puts "You won #{@bet} dollars."
  end

  def lose
    @amount -= @bet
    puts "You lose monies."
    puts "You lost #{@bet} dollars."
  end

  def game_reset
    @high_or_low = nil
    @bet = nil
    puts "Do you want to play again? yes/no"
   
    input_incorrect = true
    while input_incorrect
      user_input = gets.strip.downcase
      if user_input == "yes" || user_input == "no"
        input_incorrect = false
      else
         puts "Invalid, try again."
      end
    end

    if user_input == "yes"
      play
    end
  end
  
	def play
		cards_high_low = [
      {card: 'A', value: 1},
      {card: '2', value: 2},
      {card: '3', value: 3},
      {card: '4', value: 4},
      {card: '5', value: 5},
      {card: '6', value: 6},
      {card: '7', value: 7},
      {card: '8', value: 8},
      {card: '9', value: 9},
      {card: '10', value: 10},
      {card: 'J', value: 11},
      {card: 'Q', value: 12},
      {card: 'K', value: 13}
    ]
      
    first_card = cards_high_low.sample
    second_card = cards_high_low.sample
    
    puts "How much do you want to bet?"
    @bet = gets.strip.to_i
    
    puts "Dealer draws #{first_card[:card]} which is worth #{first_card[:value]}"
    

    puts "Time to bet, High or Low?"
    
    high_low_validated = false
    while !high_low_validated
      @high_or_low = gets.strip.downcase
      if @high_or_low == "high" || @high_or_low == "low"
        high_low_validated = true
      else
        puts "Please type either high or low"
      end
    end
    
    puts "Dealer's second card drawn is #{second_card[:card]} which is worth #{second_card[:value]}"
    
    case true
    when first_card[:value] == second_card[:value]
      puts "Draw!"
    when @high_or_low == "high" && first_card[:value] < second_card[:value]
      win
    when @high_or_low == "high" && first_card[:value] > second_card[:value]
      lose
    when @high_or_low == "low" && first_card[:value] > second_card[:value]
      win
    when @high_or_low == "low" && first_card[:value] < second_card[:value]
      lose
    end
    game_reset
	end
end

