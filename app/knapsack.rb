class Knapsack

  # Given a set of items, each with a weight and a value, determines
  # the maximum profit you can have while keeping the overall weight
  # smaller than the capacity of the knapsack.
  #
  # @param capacity [Integer] The capacity of the knapsack
  #
  def initialize(capacity)
    @value = -1
    @capacity = capacity
  end

  def value
    @value
  end

  # @param items [Array<Array>] An array of pairs (weight, profit) representing the items
  def fill_sack(items)

  end
end
