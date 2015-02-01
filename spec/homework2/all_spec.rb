require_relative '../spec_helper'
require_relative '../../homework2/all'

describe 'all' do
  it 'returns false when all conditions are not true' do
    expect(all? [1, 4, 3] { |e| e % 2 == 0 }).to be false
  end

  it 'returns false when all conditions are false' do
    expect(all? [1, 5, 3] { |e| e % 2 == 0 }).to be false
  end

  it 'returns true when all array is empty' do
    expect(all? [] { |e| e % 2 == 0 }).to be true
  end

  it 'returns true when all conditions are true' do
    expect(all? ['adsqw', 'qwwr', 'scvc'] { |e| e.length >= 4 }).to be true
  end
end
