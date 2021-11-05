class Game
  attr_reader :players, :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def change_player
    @players.select {|player| @current_player = player if @current_player != player }
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
end
