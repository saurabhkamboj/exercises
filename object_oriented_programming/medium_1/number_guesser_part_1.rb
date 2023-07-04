class GuessingGame
  MAX_GUESSES = 7
  RANGE = 1..100

  GUESS_RESULT_MESSAGE = {
    high: "Your number is too high.",
    low: "Your number is too low.",
    match: "That's the number!"
  }

  def initialize
    @secret_number = nil
  end

  def play
    reset
    game_result = play_game
    display_game_end_message(game_result)
  end

  private

  def reset
    @secret_number = rand(RANGE)
  end

  def play_game
    result = nil
    MAX_GUESSES.downto(1) do |guesses_remaining|
      display_guesses_remaining(guesses_remaining)
      result = check_guess(obtain_guess)
      puts GUESS_RESULT_MESSAGE[result]
      break if result == :match
    end

    result
  end

  def display_guesses_remaining(guesses_remaining)
    puts
    case guesses_remaining
    when 1 then puts "You have 1 guess remaining."
    else
      puts "You have #{guesses_remaining} guesses remaining."
    end
  end

  def obtain_guess
    loop do
      print "Enter a number between #{RANGE.first} and #{RANGE.last}: "
      input = gets.chomp.to_i

      return input if RANGE.cover?(input)
      print "Invalid guess. "
    end
  end

  def check_guess(guessed_number)
    return :match if guessed_number == @secret_number
    return :low if guessed_number < @secret_number
    :high
  end

  def display_game_end_message(result)
    puts
    case result
    when :high || :low
      puts "You have no more guesses. You lost!"
    else
      puts "You won!"
    end
  end
end

game = GuessingGame.new
game.play
