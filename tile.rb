class Tile

  attr_reader :bombed, :revealed, :flagged
  # attr_accessor :pos

  def initialize(board)
    @bombed = false
    @revealed = false
    @flagged  = false
    @board = board
    # @pos = nil
  end

  def reveal
    @revealed = true
  end

  def neighbors 
  end

  def neighbor_bomb_count
  end

  def bomb
    @bombed = true
  end

  def flag
    @flagged = true
  end

end
