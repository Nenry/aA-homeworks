class Map

  def initialize
    @map = [] #[[k1, v1], [k2, v2], [k3, v2], ...]
  end

  def assign(key, value)
    pair_index = @map.index {|pair| pair[0] == key}

    if pair_index
      @map[pair_index] = value
    else
      @map << [key, value]
    end

  end

  def lookup(key)
    @map.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def remove(key)
    @map.each do {|pair| map.delete(pair) if pair[0] == key}
  end

  def show
    @map.dup
  end

  private
  def deep_dup(arr)
      arr.map { |el| el.is_a?(Array) ? deep_dup(el) :el }
  end




end
