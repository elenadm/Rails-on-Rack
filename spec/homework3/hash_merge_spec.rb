require_relative '../spec_helper'
require_relative '../../homework3/hash_merge'

describe 'hash_merge' do
  it 'when a duplicate key twice' do
    expect(hash_merge({'a' => 100, 'b' => 2}, {'a' => 200, 'b' => 5})).to eq({'a' => 200, 'b' => 5})
  end

  it 'when a duplicate key one' do
    expect(hash_merge({"a" => 70, "c" => 70}, {"b" => 200, "a" => 50})).to eq({"a" => 50, "c" => 70, "b" => 200})
  end

  it 'when no duplicate key' do
    expect(hash_merge({"a" => 100, "c" => 70}, {"b" => 200, "d" => 50})).to eq({"a" => 100, "c" => 70, "b" => 200, "d" => 50})
  end
end
