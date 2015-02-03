require_relative '../spec_helper'
require_relative '../../homework3/flatten'

describe 'flatten' do
  it 'returns a new array that is a one-dimensional flattening of this array' do
    expect(flatten [1, 2, [2, 3]]).to eq([1, 2, 2, 3])
  end

  it 'returns a new array that is a many-dimensional flattening of this array' do
    expect(flatten [1, [2, [[2, [3]], [2]]], 4]).to eq([1, 2, 2, 3, 2, 4])
  end

  it 'returns a new array that is a none-dimensional flattening of this array' do
    expect(flatten [1, 2, 3]).to eq([1, 2, 3])
  end

  it 'returns empty array for []' do
    expect(flatten []).to eq([])
  end
end
