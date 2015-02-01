require_relative '../spec_helper'
require_relative '../../homework2/reduce'

describe 'reduce' do
  it 'returns sum with condition' do
    expect(reduce([1, 6, 2, 4], 0) { |sum, n| n > 3 ? sum + n : sum }).to eq(10)
  end

  it 'returns product range' do
    expect(reduce((3..6), 1) { |product, n| product * n }).to eq(360)
  end
end
