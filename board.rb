class Board

  def initialize(grid = Array.new(9) {Array.new(9) {Tile.new}, bomb_count = 10)
    @grid = grid
    @bomb_count = bomb_count
  end

  def plant_bombs(bomb_count)
    counter = 0
    until counter == bomb_count
      pos = [rand(9), rand(9)]
      if valid_plant?(pos)
        grid[pos].bomb
        counter += 1
      end
    end
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def []=(pos, value)
    row, col = pos
    grid[row][col] = value
  end

  def render


  end

  def valid_plant?(pos)
    grid[pos].bombed ? false : true
  end

end
