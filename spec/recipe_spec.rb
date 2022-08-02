require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

  RSpec.describe Recipe do
    before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
  # => #<Recipe:0x007fe84383d000...>
    end 
  it 'has attrubutes' do
      expect(@recipe1.name).to eq("Mac and Cheese")
    end 
    
    it 'expects no ingredients' do
      expect(@recipe1.ingredients_required).to eq({})
    end

    it 'can add ingredients' do
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient1, 4)
      @recipe1.add_ingredient(@ingredient2, 8)

      expect(@recipe1.ingredients_required).to be_a Hash
    end 
    
    it'can' do
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient1, 4)
      @recipe1.add_ingredient(@ingredient2, 8)


      expect(@recipe1.ingredients).to eq([@ingredient1, @ingredient2])

    end
  end 
