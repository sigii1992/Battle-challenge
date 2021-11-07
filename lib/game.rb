class Game
  attr_reader :players, :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def change_player
    @current_player = opponent_of(current_player)
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.reduce_points
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
end
