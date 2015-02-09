require_relative '../spec_helper'
require_relative '../../homework5/Geometric_figures'

describe Line do
  before { @line = Line.new(50, 160, 60, 220) }
  it "returns the correct draw for line" do
    expect(@line.draw).to eq("<line x1=\"50\" y1=\"160\" x2=\"60\" y2=\"220\" stroke= \"black\" stroke-width=\"1\"/>")
  end
end

describe Rect do
  before { @rect = Rect.new(42, 120, 16, 40) }
  it "returns the correct draw for rect" do
    expect(@rect.draw).to eq("<rect x=\"42\" y=\"120\" width=\"16\" height=\"40\" stroke= \"black\" fill=\"none\"/>")
  end
end

describe Circle do
  before { @circle = Circle.new(100, 100, 3, 'black') }
  it "returns the correct draw for circle" do
    expect(@circle.draw).to eq("<circle cx=\"100\" cy=\"100\" r=\"3\" stroke= \"black\" fill=\"black\"/>")
  end
end

describe Arrow do
  before { @arrow = Arrow.new(50, 100, 250, 100) }
  it "returns the correct draw for arrow" do
    expect(@arrow.draw).to eq("<line x1=\"50\" y1=\"100\" x2=\"250\" y2=\"100\" stroke= \"black\"/>")
  end
end
