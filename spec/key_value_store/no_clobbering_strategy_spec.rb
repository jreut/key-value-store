# frozen_string_literal: true
require 'key_value_store/no_clobbering_strategy'
require 'roles/storage_strategy_role'

RSpec.describe KeyValueStore::NoClobberingStrategy do
  include_examples 'StorageStrategyRole'

  context '#clobber' do
    context 'returns the old value when the old value is present' do
      it 'and the new value is present' do
        expect(subject.clobber(old: 'foo', new: 'bar')).to eql('foo')
      end
      it 'and the new value is nil' do
        expect(subject.clobber(old: 'foo', new: nil)).to eql('foo')
      end
    end

    context 'returns the new value when the old value is nil' do
      it 'and the new value is present' do
        expect(subject.clobber(old: nil, new: 'bar')).to eql('bar')
      end
    end

    it 'returns nil when both values are nil' do
      expect(subject.clobber(old: nil, new: nil)).to be_nil
    end
  end
end
