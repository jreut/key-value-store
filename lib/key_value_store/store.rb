# frozen_string_literal: true
require 'key_value_store/no_clobbering_strategy'

module KeyValueStore
  class Store # :nodoc:
    attr_reader :h, :storage_strategy

    def initialize(storage_strategy: NoClobberingStrategy)
      @h = {}
      @storage_strategy = storage_strategy.new
    end

    def set(k, v)
      h[k] = storage_strategy.clobber(old: get(k), new: v)
    end

    def get(k)
      h[k]
    end

    def delete(k)
      h.delete k
    end
  end
end
