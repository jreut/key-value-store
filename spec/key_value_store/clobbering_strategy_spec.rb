# frozen_string_literal: true
require 'key_value_store/clobbering_strategy'
require 'roles/storage_strategy_role'

RSpec.describe KeyValueStore::ClobberingStrategy do
  include_examples 'StorageStrategyRole'

  context '#clobber' do
    context 'returns the new value' do
      it 'when both values are present' do
        expect(subject.clobber(old: 'foo', new: 'bar')).to eql('bar')
      end

      it 'when the old value is nil' do
        expect(subject.clobber(old: nil, new: 'foo')).to eql('foo')
      end

      it 'when both are nil' do
        expect(subject.clobber(old: nil, new: nil)).to be_nil
      end

      it 'when the new value is nil' do
        expect(subject.clobber(old: 'foo', new: nil)).to be_nil
      end
    end
  end
end
