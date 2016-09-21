# frozen_string_literal: true
RSpec.shared_examples 'StorageStrategyRole' do
  it { is_expected.to respond_to(:clobber).with_keywords(:old, :new) }
end
