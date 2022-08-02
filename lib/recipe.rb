class Recipe

  attr_reader :name, :ingredients_required  

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def ingredients
    @ingredients_required.key.each do |k, v|
      p @ingredients_required
    end
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] += amount
  end
end
