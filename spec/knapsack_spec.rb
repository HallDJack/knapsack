require 'rspec'
require_relative '../app/knapsack.rb'

describe Knapsack

describe "#fill_sack" do
  before(:each) do
    # Items is an array of pairs (weight and profit)
    @items = [
      [1, 2],
      [12, 20],
      [4, 3],
      [6, 4]
    ]
  end

  it "should return 0 profit when capacity is 0" do
    sack = Knapsack.new(0)

    sack.fill_sack(@items)

    sack.value.should == 0
  end

  it "<test-description-here>" do
    pending "pending until the test is written"
  end
end
