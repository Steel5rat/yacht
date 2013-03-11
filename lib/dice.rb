class Dice
  attr_reader :val
  def roll
    @val=rand(1..6)
   # @val = 5
  end

  def to_s
    self.val
  end
end