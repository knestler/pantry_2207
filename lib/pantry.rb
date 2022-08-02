class Pantry

  attr_reader :ingredient

  def initialize
    @pantry = Hash.new(0)

  end

  def stock
    @pantry
  end

  def stock_check(ingredient)
    @pantry[ingredient]
  end

  def restock(ingredient, amount)
    @pantry[ingredient] += amount
  end


end
