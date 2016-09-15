# frozen_string_literal: true
class Store # :nodoc:
  attr_reader :h

  def initialize(clobber: false)
    raise ArgumentError, 'clobber cannot be nil' if clobber.nil?
    @h = {}
    @clobber = clobber
  end

  def set(k, v)
    h[k] = v if can_write? k
  end

  def get(k)
    h[k]
  end

  def delete(k)
    h.delete k
  end

  def can_write?(k)
    !get(k) || clobberable?
  end

  def clobberable?
    @clobber
  end
end
