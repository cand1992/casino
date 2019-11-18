


class Craps
  attr_accessor :amount
  def initialize(amount)
    @amount = amount
    
  end

   def intro

    puts "Welcome to Craps!"
    puts "There are no players currently at the table would you like to join?(y/n)"
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
    
    puts "Your Current wallet amount is $#{@amount}.00:"
    puts "How much would you like to bet?"
    
    bet = gets.strip.to_i
    
      if bet > @amount
        puts "You do not have enough money for that bet."
        puts "Please enter a different amount"
        play
      
      elsif bet <= 0
        puts "Please bet a number greater than 0!"
        play
      else
        dice1 = [1,2,3,4,5,6]
        dice2 = [1,2,3,4,5,6]
        def dice_roll
          d1_rolled = dice1.sample
          d2_rolled = dice2.sample
          @total_roll = d1_rolled + d2_rolled
          puts "You rolled:"
          puts "First Dice: #{d1_rolled}, Second Dice: #{d2_rolled}"
        end
        puts "Please select one of the following bets:"
        puts "1) Pass Line"
        puts "2) Don't pass line"
        bet_type = gets.strip.to_i
        case bet_type
        when 1
          puts "Placing #{bet} for Pass line bet(y/n)?"
          answer = gets.strip.capitalize
           if answer == "Y"
            dice_roll
           elsif answer == "N"
            play
           else 
            puts "Incorrect option"
            play

           end
        end
      end
    
     end

  end
end

Pass Line Bet - You win if the first roll is a natural (7, 11) 
and lose if it is craps (2, 3, 12). If a point is rolled (4, 5, 6, 8, 9, 10) 
it must be repeated before a 7 is thrown in order to win. 
If 7 is rolled before the point you lose.

until conditional [do]

  # code to be executed
 puts "\n"
 end

 Don't Pass Line: Don't Pass bets are the opposite of Pass line bets. 
 When you make a Don't Pass bet you are basically betting against the shooter. 
  You want the shooter to crap out (roll a 2, 3 or 12) on the come-out roll.  
  If a point is established on the come-out roll, then your goal as a 
  Don't Pass bettor is to have the shooter roll a 7 before hitting their established number.