require('spec_helper')

describe(Ingredient) do
  describe('#recipes') do
    it('lists all the recipes in it') do
      test_recipe = Recipe.create({:name => "yogurt and berries", :instructions => "mix yogurt and berries", :rating => 5})
      test_ingredient = Ingredient.create({:name => "yogurt"})
      test_ingredient.recipes.push(test_recipe)
      expect(test_ingredient.recipes()).to(eq([test_recipe]))
    end
  end
end
