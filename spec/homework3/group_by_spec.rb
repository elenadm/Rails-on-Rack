require_relative '../spec_helper'
require_relative '../../homework3/group_by'

describe 'group_by' do
  it 'when grouped by modulo' do
    expect(group_by(1..6) { |i| i % 3 }).to eq({0 => [3, 6], 1 => [1, 4], 2 => [2, 5]})
  end

  it 'when grouped by first letter' do
    expect(group_by(['Golden Eagle', 'Gyrfalcon', 'American Robin',
                     'Mountain BlueBird', 'Mountain-Hawk Eagle']) { |s| s[0] }).to eq({"G" => ["Golden Eagle", "Gyrfalcon"], "A" => ["American Robin"],
                                                                                       "M" => ["Mountain BlueBird", "Mountain-Hawk Eagle"]})
  end
end
