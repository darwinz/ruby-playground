class Game
  include Enumerable
  attr_accessor :players
  def each(&block)
    players.each(&block)
  end

  def initialize
    @players = []
  end

  def add_player(player)
    players.push(player)
  end

  def score
    score = 0
    players.each do |player|
      score += player.score
    end
    score
  end
end