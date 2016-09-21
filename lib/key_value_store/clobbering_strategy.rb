# frozen_string_literal: true
module KeyValueStore
  class ClobberingStrategy # :nodoc:
    def clobber(new:, **)
      new
    end
  end
end
