require_relative '../spec_helper'
require_relative '../../homework2/fibonacci_numbers'

describe 'fibonacci_numbers' do
  it 'returns 0 for fibonacci number 0. V1' do
    expect(fibonacci_numbers_v1 0).to eq(0)
  end

  it 'returns same values for fibonacci number 50. V1' do
    expect(fibonacci_numbers_v1 50).to eq(12586269025)
  end

  it 'returns 0 for fibonacci number 0. V2' do
    expect(fibonacci_numbers_v2 0).to eq(0)
  end

  it 'returns same values for fibonacci number 50. V2' do
    expect(fibonacci_numbers_v2 50).to eq(12586269025)
  end
end
