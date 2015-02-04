require_relative '../spec_helper'
require_relative '../../homework2/sum_2_max_square'

describe 'sum_2_max_square' do
  it 'returns sum of the negative elements. V1' do
    expect(sum_2_max_square_v1(-1, -2, -3)).to eq(5)
  end

  it 'returns sum of the negative elements. V2' do
    expect(sum_2_max_square_v2(-1, -2, -3)).to eq(5)
  end

  it 'returns sum of the negative elements. V3' do
    expect(sum_2_max_square_v3(-1, -2, -3)).to eq(5)
  end

  it 'returns sum of the different elements. V1' do
    expect(sum_2_max_square_v1(5, 0, -1)).to eq(25)
  end

  it 'returns sum of the different elements. V2' do
    expect(sum_2_max_square_v2(5, 0, -1)).to eq(25)
  end

  it 'returns sum of the different elements. V3' do
    expect(sum_2_max_square_v3(5, 0, -1)).to eq(25)
  end

  it 'returns sum of the same elements. V1' do
    expect(sum_2_max_square_v1(1, 1, 1)).to eq(2)
  end

  it 'returns sum of the same elements. V2' do
    expect(sum_2_max_square_v2(1, 1, 1)).to eq(2)
  end

  it 'returns sum of the same elements. V3' do
    expect(sum_2_max_square_v3(1, 1, 1)).to eq(2)
  end

  it 'returns error. V1' do
    expect { (sum_2_max_square_v1(0, 0)) }.to raise_error(ArgumentError)
  end
end
