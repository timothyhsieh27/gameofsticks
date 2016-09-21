def set_sticks
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

def take_sticks
  loop do
    puts "There are #{@stick_number} on the board."
    puts "Player: How many sticks will you take (1-3)?"
    player_take = gets.chomp.to_i
    if 1 <= player_take && player_take <= 3
      @stick_number = @stick_number - player_take
        break
    else
      puts "Invalid input. Please enter a number between 10 and 100: "
    end
  end
end

def pvp_game

  set_sticks
  loop do
    if @stick_number > 0
      take_sticks
    else
      puts "The pile has 0 sticks remaining. You lose!"
      break
    end
  end
end

def player_turn
  loop do
    puts "There are #{@stick_number} sticks on the board."
    puts "Player 1: How many sticks will you take (1-3)?"
    player_take = gets.chomp.to_i
    if 1 <= player_take && player_take <= 3
      @stick_number = @stick_number - player_take
        break
    else
      puts "Invalid input. Please enter a number between 10 and 100: "
      end
  end
end

def ai_game
  set_sticks
  loop do
    if @stick_number <= 0
      puts "The pile has 0 sticks remaining. You lose!"
      break
    else
      player_turn
      computer_turn
    end
  end
end

def computer_turn
  guesses = [1, 2, 3]
  puts "There are #{@stick_number} sticks on the board."
  computer_take = guesses.sample.to_i
  puts "The computer took #{computer_take} sticks from the pile."
  @stick_number = @stick_number - computer_take
end

def game_select_run
  loop do
    puts "Welcome to the Game of Sticks! Type '1' for player vs. player, and '2' for player vs. computer: "
    answer = gets.chomp.to_i
      if answer == 1
        puts "You have selected Player vs. Player mode."
        pvp_game
        break
      elsif answer == 2
        puts "You have selected Player vs. Computer mode. Booting AI sequence."
        ai_game
        break
      else
        puts "Invalid input. Please enter either '1' or '2' to select game mode: "
      end
  end
end

def main
  game_select_run
end

class Sticks
  def initialize
    @stick_number = stick_number
  end
end

main if __FILE__ == $PROGRAM_NAME
