require_relative '../spec_helper'
require_relative '../../homework3/count'

describe 'count' do
  it 'returns 1 with one suitable' do
    expect(count [1, 4, 3] { |e| e % 2 == 0 }).to eq(1)
  end

  it 'returns count with all suitable' do
    expect(count [12, 9, 3] { |e| e % 3 == 0 }).to eq(3)
  end

  it 'returns 0 with none suitable' do
    expect(count ['any', 'all', 'reduce'] { |e| e.length > 8 }).to eq(0)
  end

  it 'returns 0 for empty array' do
    expect(count [] { |e| e.length > 8 }).to eq(0)
  end
end
