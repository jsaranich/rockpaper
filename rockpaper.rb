####Intro
puts "Let's play Rock, Paper, Scissors"
puts "Play to 5"
puts "Ready!"

####Keep Score
user_score = 0
comp_score = 0
rps_array = ["rock", "paper", "scissors"]

####Loop through game multiple times
while user_score < 5 && comp_score < 5

 ####Store User's choice - Rock, paper or scissors
 puts "Input your choice: "
 user_choice = gets.chomp.downcase

 ####Store my computer's choice
 comp_choice = rps_array.sample


 ####Valid user choice
 until user_choice == "rock" || user_choice == "paper" || user_choice == "scissors"
 puts "Not a valid entry, Input your choice again: "
 user_choice = gets.chomp.downcase
 end

 ####Rules of the game
 puts "You chose: #{user_choice} and the computer chose: #{comp_choice}."

 if user_choice == comp_choice
 puts "You tied, try again!"
 elsif user_choice == "rock" && comp_choice == "paper" || user_choice == "scissors" && comp_choice == "rock" || user_choice == "paper" && comp_choice == "scissors"
 puts "Sorry you lost! #{comp_choice} beats #{user_choice}!"
 comp_score += 1
 else
 puts "You won! #{user_choice} beats #{comp_choice}!"
 user_score += 1
 end

 puts "The Score is You: #{user_score} to Computer: #{comp_score}."


end

####Result for winner
if user_score == 5
 puts "You win the game!"
elsif comp_score == 5
 puts "You lose the game! loser!"
end
