require_relative '../lib/benefit'
require 'json'

describe Benefit do
  let(:benefits) { Benefit.new }

  describe '#read_benefits_file' do
    it 'returns a hash' do
      expect(benefits.read_benefits_file.class).to eq(Array)
    end
  end
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
