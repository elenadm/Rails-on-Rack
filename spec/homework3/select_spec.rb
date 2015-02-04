require_relative '../spec_helper'
require_relative '../../homework3/select'

describe 'select' do
  it 'returns a new array with one element for which the given block returns a one true value' do
    expect(select [1, 2, 3] { |e| e % 2 == 0 }).to eq([2])
  end

  it 'returns a new array containing all elements of array for which the given block returns a true value' do
    expect(select ['any', 'all', 'reduce'] { |e| e.length > 2 }).to eq(['any', 'all', 'reduce'])
  end

  it 'returns empty array with none suitable' do
    expect(select (1..4) { |e| e % 5 == 0 }).to eq([])
  end

  it 'returns empty array' do
    expect(select ([]) { |e| e % 5 == 0 }).to eq([])
  end
end
