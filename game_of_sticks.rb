def game_start
  loop do
    puts "Welcome to the Game of Sticks! Choose how many sticks the table starts with(10-100): "
    @stick_number = gets.chomp.to_i
      if 10 <= @stick_number && @stick_number <= 100
        puts "You will start with #{@stick_number} sticks in the pile."
        break
      else
      puts "Invalid input. Please enter a number between 10 and 100: "
      end
  end
end

def take_sticks(player_take)
  loop do
    puts "There are #{@stick_number} sticks on the board."
    puts "Player: How many sticks will you take (1-3)?"
    player_take = gets.chomp.to_i
    if 1 <= player_take && player_take <= 3
      @stick_number = @stick_number - player_take
      puts "There are now #{@stick_number} sticks remaining."
        break
    else
      puts "Invalid input. Please enter a number between 10 and 100: "
    end
  end
end

def main
  player_take =
  game_start
  loop do
    if @stick_number > 0
      take_sticks(player_take)
    else
      puts "Game over! You lose!"
      break
    end
  end
end

class Sticks
  def initialize
    @stick_number = stick_number
  end
end

main
