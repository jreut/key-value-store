# frozen_string_literal: true
class NoClobberingStrategy # :nodoc:
  def clobber(old:, new:)
    old.nil? ? new : old
  end
end
