# frozen_string_literal:  true
require 'store'

RSpec.describe Store do
  context 'getting and setting' do
    it 'starts empty' do
      expect(subject.get('foo')).to be_nil
    end

    it 'works' do
      key = 'foo'
      value = 'bar'
      subject.set key, value
      got = subject.get key
      expect(got).to be value
    end

    it "won't overwrite a previously set value" do
      key = 'foo'
      value = 'bar'
      another_value = 'baz'
      subject.set key, value
      subject.set key, another_value
      expect(subject.get(key)).to be value
    end
  end

  it 'deletes' do
    key = 'foo'
    value = 'bar'
    subject.set key, value
    expect(subject.get(key)).to be value
    subject.delete key
    expect(subject.get(key)).to be_nil
  end
end
