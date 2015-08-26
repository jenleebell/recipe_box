require('spec_helper')

describe(Category) do
  describe('#recipes') do
    it('lists all the recipes in it') do
      test_recipe = Recipe.create({:name => "yogurt and berries", :instructions => "mix yogurt and berries", :rating => 5})
      test_category = Category.create({:name => "breakfast"})
      test_category.recipes.push(test_recipe)
      expect(test_category.recipes()).to(eq([test_recipe]))
    end
  end
end
