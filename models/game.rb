class Game

  def initialize(opponent_choice)
    @opponent_choice = opponent_choice

  end

  def rock()
    if @opponent_choice == "scissors"
      return "You lose"
    elsif @opponent_choice == "paper"
      return "You win"
    elsif @opponent_choice == "rock"
      return "Draw"
    else
      return "Not valid"
    end
  end

  def paper()
    if @opponent_choice == "rock"
      return "You lose"
    elsif @opponent_choice == "scissors"
      return "You win"
    elsif @opponent_choice == "paper"
      return "Draw"
    else
      return "Not valid"
    end
  end

  def scissors()
    if @opponent_choice == "paper"
      return "You lose"
    elsif @opponent_choice == "rock"
      return "You win"
    elsif @opponent_choice == "scissors"
      return "Draw"
    else
      return "Not valid"
    end
  end

  def self.computer_choice
    choice = ["rock", "paper", "scissors"].sample
    return choice
  end

end
