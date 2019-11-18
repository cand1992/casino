require 'colorize'


class Craps
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
    file = File.open("ascii.txt")
    banner = file.read
    puts banner.blue
    puts "\n"
    puts "--------------------".yellow
    puts "!!WELCOME TO CRAPS!!".green
    puts "--------------------".yellow
    puts "\n"
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
    puts "\n"
    puts "\n"
    puts "\n"
    puts "Your Current wallet amount is $#{@amount}.00:"
    puts "How much would you like to bet?"
    puts "\n"
    puts "\n"
    bet = gets.strip.to_i
    
    
      if bet > @amount
        puts "You do not have enough money for that bet."
        puts "Please enter a different amount"
        play
      
      elsif bet <= 0
        puts "Please bet a number greater than 0!"
        play
      else
        @dice1 = [1,2,3,4,5,6]
        @dice2 = [1,2,3,4,5,6]
        def dice_roll
          d1_rolled = @dice1.sample
          d2_rolled = @dice2.sample
          @total_roll = d1_rolled + d2_rolled          
          puts "First Dice: #{d1_rolled}, Second Dice: #{d2_rolled}"
          puts "You rolled: #{@total_roll}"
          puts "\n"
        end
        puts "\n"
        puts "Please select one of the following bets:"
        puts "\n"
        puts "--------------------".yellow
        puts "1) Pass Line"
        puts "2) Don't pass line"
        puts "--------------------".yellow
        puts "\n"
        bet_type = gets.strip.to_i
        case bet_type
        when 1
          puts "Placing $#{bet}.00 for Pass line bet(y/n)?"
           answer = gets.strip.capitalize
           if answer == "Y"
            dice_roll
            puts "Your total roll is #{@total_roll}"
              if @total_roll == 7 || @total_roll == 11
                
                puts "\n"
                puts "-------------------------------------".yellow
                puts "You rolled a Natural #{@total_roll}.".green
                puts "You win!You won $#{bet}!".green
                puts "-------------------------------------".yellow
                @amount += bet
					      puts "\n"
					      puts "You currently have $#{@amount} to play with."
                puts "Do you want to play again? y/n"
					      if gets.strip.capitalize == "Y"
                 play
                elsif gets.strip.capitalize == "N"
                  exit
                else
                  puts "Invalid Choice"
                  exit
					      end
               elsif @total_roll == 2 || @total_roll == 3 || @total_roll == 12
                puts "\n"
                puts "-------------------------------------".yellow
                puts "CRAPS! You rolled a #{@total_roll}.".red
                puts "You lose! You lost $#{bet}!".red
                puts "-------------------------------------".yellow
                puts "\n"
                @amount -= bet
					     
					      puts "You currently have $#{@amount} to play with."
                puts "Do you want to play again? y/n"
                  if gets.strip.capitalize == "Y"
                  play
                  elsif gets.strip.capitalize == "N"
                    exit
                  else
                    puts "Invalid Choice"
                    exit
                  end
               else 
                @point = []
                @point << @total_roll
                puts "#{@point} is now POINT"
                puts "Roll a #{@point} before you roll a 7 to win!"
                puts "\n"
                puts "Roll again? (y/n)"
                   answer2 = gets.strip.capitalize
                  if answer2 == "Y"                  
                     until @total_roll == @point || @total_roll == 7 do
                      dice_roll
                       if @total_roll == @point
                        puts "You win! You won $#{bet}!"
                        @amount += bet
                        play
                       elsif @total_roll == 7
                        puts "\n"
                        puts "---------------------------".yellow
                        puts "CRAPS! You rolled a 7!.".red
                        puts "You lose! You lost $#{bet}!".red
                        puts "---------------------------".yellow
                        puts "\n"
                        @amount -= bet
                       
                        puts "You currently have $#{@amount} to play with."
                        puts "Do you want to play again? (y/n)"
                          if gets.strip.capitalize == "Y"
                          play
                          elsif gets.strip.capitalize == "N"
                            exit
                          else
                            puts "Invalid Choice"
                            exit
                          end
                       end
                     end

                  end

              end

           elsif answer == "N"
            play
          else 
            puts "Incorrect option"
            play
           end
          
        when 2
          puts "Placing $#{bet}.00 for Do Not Pass line bet(y/n)?"
           answer = gets.strip.capitalize
           if answer == "Y"
            dice_roll
            puts "Your total roll is #{@total_roll}"
              if @total_roll == 7 || @total_roll == 11
                
                puts "\n"
                puts "--------------------------".yellow
                puts "You rolled a Natural #{@total_roll}.".red
                puts "You lose!You lost $#{bet}!".red
                puts "--------------------------".yellow
                @amount -= bet
					      puts "\n"
					      puts "You currently have $#{@amount} to play with."
                puts "Do you want to play again? y/n"
					      if gets.strip.capitalize == "Y"
                 play
                elsif gets.strip.capitalize == "N"
                  exit
                else
                  puts "Invalid Choice"
                  exit
					      end
               elsif @total_roll == 2 || @total_roll == 3 || @total_roll == 12
                puts "\n"
                puts "--------------------------".yellow
                puts  "You rolled a #{@total_roll}.".green
                puts "You win! You win $#{bet}!".green
                puts "--------------------------".yellow
                puts "\n"
                @amount += bet
					     
					      puts "You currently have $#{@amount} to play with."
                puts "Do you want to play again? y/n"
                  if gets.strip.capitalize == "Y"
                  play
                  elsif gets.strip.capitalize == "N"
                    exit
                  else
                    puts "Invalid Choice"
                    exit
                  end
               else 
                @point = []
                @point << @total_roll
                puts "#{@point} is now POINT"
                puts "Roll a 7 before a #{@point} is rolled to win!"
                puts "\n"
                puts "Roll again? (y/n)"
                   answer2 = gets.strip.capitalize
                  if answer2 == "Y"                  
                     until @total_roll == @point || @total_roll == 7 do
                      dice_roll
                       if @total_roll == @point
                        puts "\n"
                        puts "--------------------------".yellow
                        puts "    You rolled point!".red
                        puts "You lose You lost $#{bet}!".red
                        puts "--------------------------".yellow
                        puts "\n"
                        @amount -= bet
                        play
                       elsif @total_roll == 7
                        puts "\n"
                        puts "-------------------------".yellow
                        puts "    You rolled a 7!".green
                        puts "You win! You won $#{bet}!".green
                        puts "-------------------------".yellow
                        puts "\n"
                        @amount += bet
                        puts "\n"
                        puts "You currently have $#{@amount} to play with."
                        puts "Do you want to play again? (y/n)"
                          if gets.strip.capitalize == "Y"
                          play
                          elsif gets.strip.capitalize == "N"
                            exit
                          else
                            puts "Invalid Choice"
                            exit
                          end
                       end
                     end

                  end

              end

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

