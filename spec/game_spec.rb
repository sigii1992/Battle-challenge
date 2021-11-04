require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it "should attack another player" do
      expect(player_2).to receive(:reduce_points)
      subject.attack(player_2)
    end
  end

end