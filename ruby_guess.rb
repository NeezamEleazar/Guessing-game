
    loop do

    puts "Welcome ,Do you want to play a guessing game?"
    player_answer = gets.chomp.downcase
  if player_answer => "yes"
    break if player_answer = ["no","No","NO","n"]
      puts "#{player_answer}, Enter your name."
    player_name = gets.chomp 
    puts "#{player_name}"
    







    secret_number = rand(1..100)
    puts secret_number
    tries = 1
    # how many times need to run.variable (counter)
    chances = 6
    # at what number you want it to stop
    guesses = [] 


    while tries <= chances
    #roof aka start of the block


    puts "Guess a number between 1-100"
    answer = gets.chomp.to_i
    guesses << answer
     
     if answer > secret_number
      puts "wrong,too high"
     elsif answer < secret_number
      puts "number is too low"
     else 
      break puts "number is correct"
     end
    puts"guesses = #{guesses}"

     tries += 1
   end


     
   #+= is multiply the number ? 
end
   
   




   
