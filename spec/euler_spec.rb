require_relative 'spec_helper'
require_relative '../group_work/lesson4/projecteuler_problem1'

describe 'projecteuler_problem1' do
  it 'first_ten_numbers' do
    expect(euler 10).to eq(23)
  end

  it 'first_one' do
    expect(euler 1).to eq(0)
  end

  it 'first_1000' do
    expect(euler 1000).to eq(233168)
  end
end
