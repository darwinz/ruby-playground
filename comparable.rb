# Require the Comparable module from standard library
# http://ruby-doc.org/core-2.2.2/Comparable.html

class Player
  include Comparable

  attr_accessor :name, :score

  def <=>(other_player)
    score <=> other_player.score
  end

  def initialize(name, score)
    @name = name
    @score = score
  end
end

player1 = Player.new("Jason", 100)
player2 = Player.new("Kenneth", 80)
player3 = Player.new("Nick", 95)
player4 = Player.new("Craig", 20)

puts "player1 > player2: %s" % (player1 > player2)
puts "player1 < player2: %s" % (player1 < player2)

game1 = Game.new
game1.add_player(player1)
game1.add_player(player2)

game2 = Game.new
game2.add_player(player3)
game2.add_player(player4)

game1.each do |player|
  puts "Player: #{player.name}, score: #{player.score}"
end

high_scores = game1.select do |player|
  player.score > 80
end
puts high_scores.inspect

puts game1.any?{|player| player.score > 80}

players = game1.find{|player| player.score > 80}
puts "Players with a score > 80", players.inspect