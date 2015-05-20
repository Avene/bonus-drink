class BonusDrink
  def self.total_count_for(amount)
    raise StandardError if amount < 0
    empty_bottles = amount
    drunk = amount
    while empty_bottles >= 3
      exchanged = empty_bottles / 3
      drunk += exchanged
      empty_bottles -= exchanged * 2
    end
    return drunk
  end
end