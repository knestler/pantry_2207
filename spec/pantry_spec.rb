require './lib/ingredient'
require './lib/pantry'


RSpec.describe Pantry do

  before :each do  
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @pantry = Pantry.new
  end 
   
  it 'has has stock' do 
    expect(@pantry.stock).to eq({})
  end

  it 'has no items' do 
    expect(@pantry.stock_check(@ingredient1)).to eq(0)
  end
  
  it 'can restrock items' do
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)

    expect(@pantry.stock_check(@ingredient1)).to eq(15)
  
    @pantry.restock(@ingredient2, 7)

    expect(@pantry.stock_check(@ingredient2)).to eq(7)
  end 

end