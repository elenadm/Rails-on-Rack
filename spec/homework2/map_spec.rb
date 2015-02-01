require_relative '../spec_helper'
require_relative '../../homework2/map'

describe 'map' do
  it 'returns product' do
    expect(map([5, 2, 6]) { |i| i * 3 }).to eq([15, 6, 18])
  end

  it 'returns sum of string arguments' do
    expect(map(['a', 'b', 'c', 'd']) { |x| x + '!' }).to eq(['a!', 'b!', 'c!', 'd!'])
  end
end
