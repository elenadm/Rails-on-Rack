require_relative '../spec_helper'
require_relative '../../homework3/sort_array'

describe 'sort_array' do
  it 'returns a new array created by desc sort even/odd with negative elements' do
    expect(even_odd_desc [-1, 8, -4, -6, 7, 7, 5, 0]).to eq([8, 0, -4, -6, 7, 7, 5, -1])
  end

  it 'returns a new array created by desc sort even/odd with positive elements' do
    expect(even_odd_desc [1, 8, 4, 6, 8, 7, 5, 0]).to eq([8, 8, 6, 4, 0, 7, 5, 1])
  end

  it 'returns a new array created by sort by length' do
    expect(sort_by_length ["length", "map", "git", "count"]).to eq(["git", "map", "count", "length"])
  end
end
