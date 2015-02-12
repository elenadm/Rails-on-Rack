require_relative '../spec_helper'
require_relative '../../homework5/Geometric_figures'

describe Line do
  subject { Line.new(50, 160, 60, 220) }
  it "returns the correct draw for line" do
    expect(subject.draw).to eq("<line x1='50' x2='60' y1='160' y2='220' stroke_width='1' stroke='black'/>")
  end
end

describe Rect do
  subject { Rect.new(42, 120, 16, 40) }
  it "returns the correct draw for rect" do
    expect(subject.draw).to eq("<rect x='42' y='120' width='16' height='40' fill='none' stroke='black'/>")
  end
end

describe Circle do
  subject { Circle.new(100, 100, 3, 'black') }
  it "returns the correct draw for circle" do
    expect(subject.draw).to eq("<circle cx='100' cy='100' r='3' fill='black' stroke='black'/>")
  end
end

describe Arrow do
  subject { Arrow.new(50, 100, 250, 100) }
  it "returns the correct draw for arrow" do
    expect(subject.draw).to eq("<line x1='50' x2='250' y1='100' y2='100' stroke='black'/>")
  end
end
