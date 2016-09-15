class Store
  attr_reader :h

  def initialize
    @h = {}
  end

  def set(k, v)
    h[k] = v
  end

  def get(k)
    h[k]
  end

  def delete(k)
    h.delete k
  end
end
