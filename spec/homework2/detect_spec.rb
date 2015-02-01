require_relative '../spec_helper'
require_relative '../../homework2/detect'

describe 'detect' do
  it 'returns 1 with one suitable' do
    expect(detect ([1, 2, 3]) { |e| e % 2 == 0 }).to eq(2)
  end

  it 'returns first element for which block is not false' do
    expect(detect (['any', 'all', 'reduce']) { |e| e.length > 4 }).to eq('reduce')
  end

  it 'returns nil with none suitable' do
    expect(detect (1..4) { |e| e % 5 == 0 }).to be_nil
  end
end
