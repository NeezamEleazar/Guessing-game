@score_name = {}

def game_difficulty()
puts "Choose your difficulty"
puts"easy - medium - hard"
@decided_difficulty = gets.chomp
if @decided_difficulty == "easy"
end

  def name_player()
  puts "Welcome,Enter you name"
  @player_name = gets.chomp 
  puts "Hi #{@player_name}"
  end

  def game_value_number (easy)
   @secret_number = rand(1..100)
   puts @secret_number
   @tries = 1
   @chances = 6
   @guesses = []
  end

  def game_value_number (medium)
   @secret_number = rand(1..200)
   puts @secret_number
   @tries = 1
   @chances = 6
   @guesses = []
  end

 def game_value(easy)
    while @tries <= @chances
      puts "Guess a number between 1-100"
      @answer = gets.chomp.to_i
      
        if @answer > @secret_number
        puts "wrong,too high"
        elsif @answer < @secret_number
        puts "number is too low"
        else 
        break puts "number is correct"
      end
      
       @guesses << @answer
      puts "your anwser = [#{@answer}]"
        
      @tries += 1
    end
  end

  def game_value(medium)
    while @tries <= @chances
      puts "Guess a number between 1-200"
      @answer = gets.chomp.to_i
      
        if @answer > @secret_number
        puts "wrong,too high"
        elsif @answer < @secret_number
        puts "number is too low"
        else 
        break puts "number is correct"
      end
      
       @guesses << @answer
      puts "your anwser = [#{@answer}]"
        
      @tries += 1
    end
  end
  
def scoreboard_values()
    @score_name[@player_name] = @tries

    puts "SCOREBOARD"
    puts @score_name.class
  
    puts "HIGHSCORE" 
    @score_name.sort_by {|player_name,tries|}.each do |player_name,tries|
    puts "#{player_name}: - #{tries}"
  end
end

  def restart_game ()
    puts "do you want to play again?"
    puts "y - Yes"
    puts "n - NO"

    @restart = gets.chomp.downcase
  end

def run_game()
  loop do
    game_difficulty()
    name_player()
    game_value_number(easy)
    game_value_number(medium)
    game_value(easy)
    game_value(medium)
    scoreboard_values()
    restart_game()
    break if @restart !="y"
  end
end



run_game()


   




   
