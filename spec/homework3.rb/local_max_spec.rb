require_relative '../spec_helper'
require_relative '../../homework3/local_max'

describe 'local_max' do
  it 'returns array with one local max with one suitable' do
    expect(local_max [1, 2, 3, 1, 2]).to eq([3])
  end

  it 'returns array with several local max with several suitable' do
    expect(local_max [1, 2, 1, 3, 2]).to eq([2, 3])
  end

  it 'returns empty array with none suitable' do
    expect(local_max [1, 2, 3, 4, 5]).to eq([])
  end
end
