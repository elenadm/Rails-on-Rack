require_relative '../spec_helper'
require_relative '../../homework2/sum_2_max_square'

describe 'sum_2_max_square' do
  it 'returns sum for version 1' do
    expect(sum_2_max_square_v1(-1, 2, -3)).to eq(5)
    expect(sum_2_max_square_v1(15, 25, 10)).to eq(850)
  end

  it 'returns sum for version 2' do
    expect(sum_2_max_square_v2(-1, 2, -3)).to eq(5)
    expect(sum_2_max_square_v2(15, 25, 10)).to eq(850)
  end

  it 'returns sum for version 3' do
    expect(sum_2_max_square_v3(-1, 2, -3)).to eq(5)
    expect(sum_2_max_square_v3(15, 25, 10)).to eq(850)
  end
end
