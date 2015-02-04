require_relative '../spec_helper'
require_relative '../../homework3/reverse'

describe 'reverse' do
  it 'returns a new array containing self elements in reverse order' do
    expect(reverse [5, 2, 6, 7, 1]).to eq([1, 7, 6, 2, 5])
  end

  it 'returns a new array with one element containing self elements in reverse order' do
    expect(reverse ['a']).to eq(['a'])
  end

  it 'returns empty array' do
    expect(reverse []).to eq([])
  end
end
