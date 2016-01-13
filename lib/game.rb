require_relative 'player'

class Game

  attr_reader :whos_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @whos_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @whos_turn = opponent_of(whos_turn)
  end

  private

  def opponent_of(current_player)
    @players.reject{|player| player == current_player}.first
  end

end
