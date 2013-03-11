class Gamer
  attr_reader :name, :points
  def initialize(inp,name)
    @hand=inp
    @name = name
    @points=0
  end

  def roll
    puts 'hand: '+@hand.rollAll.to_s
    temp=@hand.checkCombinations
    @points+=temp
    puts 'points: '+temp.to_s
    puts "total player points: #{@points}"
  end
end