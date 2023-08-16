  






  score_name = {}
  
  loop do

    puts "Welcome,Enter you name"
    player_name = gets.chomp 
    puts "Hi #{player_name}"

    secret_number = rand(1..100)
    puts secret_number
    tries = 1
    chances = 6
    guesses = [] 

    while tries <= chances
      puts "Guess a number between 1-100"
      answer = gets.chomp.to_i
      
      if answer > secret_number
        puts "wrong,too high"
      elsif answer < secret_number
        puts "number is too low"
      else 
       break puts "number is correct"
      end

      guesses << answer
      puts "your anwser = [#{answer}]"
        
      tries += 1
    end

    score_name[player_name] = tries

    puts "SCOREBOARD"
    puts score_name.class
  
    puts "HIGHSCORE" 
    score_name.sort_by {|player_name,tries|}.each do |player_name,tries|
    puts "#{player_name}: - #{tries}"
  end
    puts "do you want to play again?"
    puts "y - Yes"
    puts "n - NO"

    restart = gets.chomp.downcase
    break if restart !="y"

  end



   




   
