class Hand
  def initialize numb
    @dices=Array.new(numb)
    for i in (0..numb-1) do
      @dices[i] = Dice.new
    end
  end

  def rollAll
    @dices.each do |dice|
      dice.roll
    end
    @dices.sort_by! {|el| el.val}
    @dices
  end

  def checkCombinations
    if checkStreet
      return 40
    end
    similar = checkThree
    if similar==3
      count = @dices.count
      temp=@dices.dup
      temp-=[@dices[0]]
      if temp.count<count-1
        return 25
      end
    end
    if similar==4
       return sumVals
    end
    if similar==5
       return 50
    end
    0
  end

  def sumVals
    sum=0
    @dices.each {|el| sum+=@dices.val}
    sum
  end

  def checkThree
    maxNumbFind=0
    for i in (0..@dices.count-2) do
      numbFind=0
      for j in (i..@dices.count-1) do
         if @dices[i].val==@dices[j].val
           numbFind+=1
         end
      end
      if numbFind>maxNumbFind
        maxNumbFind=numbFind
      end
    end
    maxNumbFind
  end

  def checkStreet
    if @dices[0]==1
      start=2
    elsif @dices[0]==2
      start=3
    else
      return false
    end
    for i in (1..@dices.count-1) do
      if @dices[i]!=start
        return false
      else
        start+=1
      end
    end
    true
  end
end