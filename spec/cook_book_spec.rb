require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'


#   ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
#   ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})

# recipe1 = Recipe.new("Mac and Cheese")
# # => #<Recipe:0x007fe84383d000...>

# recipe1.name
# # => "Mac and Cheese"

# recipe1.ingredients_required
# # => {}

# recipe1.add_ingredient(ingredient1, 2)
# recipe1.add_ingredient(ingredient1, 4)
# recipe1.add_ingredient(ingredient2, 8)

# recipe1.ingredients_required
# # => {#<Ingredient:0x00007fd7811553c8...> => 6, #<Ingredient:0x00007fd78110b0e8...> => 8}

# recipe1.ingredients
# # => [#<Ingredient:0x007fe8438c7a70...>, #<Ingredient:0x007fe843857f40...>]

# recipe2 = Recipe.new("Cheese Burger")

# cookbook = CookBook.new
# # => #<CookBook:0x00007faae6a42228 @recipes=[]>

# cookbook.add_recipe(recipe1)
# cookbook.add_recipe(recipe2)

# cookbook.recipes
# # => [#<Recipe:0x00007faae69c9698...>, #<Recipe:0x00007faae692a110...>]
# ```