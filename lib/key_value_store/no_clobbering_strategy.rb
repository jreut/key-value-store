# frozen_string_literal: true
module KeyValueStore
  class NoClobberingStrategy # :nodoc:
    def clobber(old:, new:)
      old.nil? ? new : old
    end
  end
end
