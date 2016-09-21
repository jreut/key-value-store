# frozen_string_literal: true
module KeyValueStore
  class ClobberingStrategy # :nodoc:
    def clobber(old:, new:)
      new
    end
  end
end
