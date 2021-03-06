class Game

  attr_reader :whos_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @whos_turn = player_1
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def switch_turns
    @whos_turn = opponent
  end

  def opponent
    players.reject{|player| player == whos_turn}.first
  end

  def game_over?
    opponent.hit_points <= 0
  end

  private

  attr_reader :players

end
