require 'player'

describe Player do 
   let(:player_1) { Player.new('Joe')}
   let(:player_2) { Player.new('Alice')}

   it "shows the players name" do
      expect(player_1.name).to eq 'Joe'
   end

   it "should have points" do
      expect(player_1.points).to eq Player::HIT_POINTS
   end

   describe '#attack' do
      it "should attack another player" do
         expect(player_2).to receive(:reduce_points)
         player_1.attack(player_2)
      end
   end

   describe '#reduce_points' do
      it 'should reduce player_2 points by 10' do
         expect { player_2.reduce_points }.to change { player_2.points }.by -10
      end
   end
end 