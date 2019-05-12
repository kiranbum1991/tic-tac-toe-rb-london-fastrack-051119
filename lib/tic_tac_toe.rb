# this line starts with the welcome message
puts "Welcome to Tic Tac Toe"
# now we ask for input from user, using variable called gets, i.e. do they want to play
# this line below is there to make sure that a valid input is entered before game starts
while true do
  puts "would you like to play tic tac toe?"
input = gets.strip 
# now we get user to reply and give options to their response
puts input
if input == "yes" then
  break
elsif input == "no" then
  exit
else 
  puts "tell me yes or no"
  end
end
#  now we ask if they want to be O or x's
while true do
puts "would you like to be o (noughts) or x (crosses)?"

input = gets.strip.downcase

if input == "x" then
  player = "x"
  break
elsif input == "o" then
  player = "o"
  break
else 
  puts "I dont know what you said"
 end
end
# we now need to know who is going to go first, the following makes sure
while true do
  print "would you like to go first?"
  
  input = gets.strip.downcase
  
  if input == "yes" then 
    go_first
    break
  elsif input == "no" then 
    go_second
    break
  else 
    puts "Invalid asnwer, try again"
  end
end
# this confirms if a move is valid
def valid?(board, user_input)
  number = input.to_i -1
  if !(board[number]  == " ") then
    return false
  elsif number.between?(0, 8) then
   return false 
  else 
    return true
  end
end

# this runs the actual player turn
def turn(board, player) 
  # we need to ask player where they want to move
  # And check if there is space to move and that its valid answer
  # then update the board
puts "#{player}: where do you want your mark?"
input = gets.strip

if valid? input then
  # modify board
else 
  # invalid or try again and loop around
end