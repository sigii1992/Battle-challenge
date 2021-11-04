class Player 
 attr_reader :name, :points
 HIT_POINTS = 100

 def initialize(name, points=HIT_POINTS)
  @name = name
  @points = points
 end 

 def attack(player)
  player.reduce_points
 end

 def reduce_points 
  @points -= 10
 end
end 

