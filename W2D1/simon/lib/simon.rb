class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
    take_turn
    end
    reset_game
    game_over_message
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message unless @game_over
    @sequence_length += 1

  end

  def show_sequence
    add_random_color
    @seq
  end

  def require_sequence

  end

  def add_random_color
    colors = ['red', 'blue', 'green', 'yellow']
    @seq << colors.sample

  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end