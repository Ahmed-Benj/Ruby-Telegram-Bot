require_relative '../lib/benefit'
require 'json'

describe Benefit do
  let(:benefits) { Benefit.new }

  describe '#getrandom_benefit' do
    it 'title returns a string' do
      benefit = benefits.getrandom_benefit
      expect(benefit['title'].class).to eq(String)
    end
    it 'text returns a string' do
      benefit = benefits.getrandom_benefit
      expect(benefit['text'].class).to eq(String)
    end
  end
end
