require './lib/gamer'
require './lib/dice'
require './lib/hand'

asd = Hand.new 5
players = [Gamer.new(asd,"Vystrel"),Gamer.new(asd,"Kursy")]

for i in (0..12) do
  players.each do |player|
    puts "#{player.name} turn"
    gets.chomp
    player.roll
    puts "\n\n"
  end
end

puts "\n\n"+players.max_by {|el| el.points}.name+' win with '+ players.max_by {|el| el.points}.points.to_s