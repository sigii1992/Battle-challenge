require 'game'

describe Game do
  subject(:game) { Game.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#player1' do
    it 'should have player1' do
      expect(game.player1).to eq player1
    end
  end
  
  describe '#player2' do
    it 'should have player2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it "should attack another player" do
      expect(player2).to receive(:reduce_points)
      game.attack(player2)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_player).to eq player1
    end
  end

  describe '#change_player' do
    it 'switches the turn' do
      game.change_player
      expect(game.current_player).to eq player22
    end
  end
end