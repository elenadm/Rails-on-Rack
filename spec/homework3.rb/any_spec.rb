require_relative '../spec_helper'
require_relative '../../homework3/any'

describe 'any' do
  it 'returns true when all conditions are not true' do
    expect(any?([1, 4, 3]) { |e| e % 2 == 0 }).to be true
  end

  it 'returns false when all conditions are false' do
    expect(any?([1, 5, 3]) { |e| e % 2 == 0 }).to be false
  end

  it 'returns false when all array is empty' do
    expect(any?([]) { |e| e % 2 == 0 }).to be false
  end

  it 'returns true when all conditions are true' do
    expect(any?(['adsqw', 'qwwr', 'scvc']) { |e| e.length >= 4 }).to be true
  end
end
