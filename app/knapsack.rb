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
    @value = 0
    @value = fill_sack_recur(items, @capacity)
  end

  def fill_sack_recur(items, curCapacity)
    curValue = 0

    return curValue if items == []

    item = items[0]
      temp = items - [item]
      if curCapacity >= item[0]
        curValue += [fill_sack_recur(temp, curCapacity-item[0]) + item[1], fill_sack_recur(temp, curCapacity)].max
      else
        curValue += fill_sack_recur(temp, curCapacity)
      end
    curValue
  end

end
