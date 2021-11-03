require 'player'

describe Player do 
   it "shows the players name" do
   player_1 = Player.new('Joe')
   expect(player_1.name).to eq 'Joe'
   end
end 