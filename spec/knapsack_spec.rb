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

  # Cases is an arrary of pairs (capacity, expected profit)
  cases = [
    [0, 0],
    [1, 2],
    [2, 2],
    [3, 2],
    [4, 3],
    [5, 5],
    [6, 5],
    [7, 6],
    [8, 6],
    [9, 6],
    [10, 7],
    [11, 9],
    [12, 20],
    [100, 29]
  ]

  it "should return 0 profit when capacity is 0" do
    sack = Knapsack.new(0)

    sack.fill_sack(@items)

    sack.value.should == 0
  end

  cases.each do |capacity, profit|
    it "should return #{profit} with capacity #{capacity}" do
      sack = Knapsack.new(capacity)

      sack.fill_sack(@items)

      sack.value.should == profit
    end
  end


  it "<test-description-here>" do
    pending "pending until the test is written"
  end
end
