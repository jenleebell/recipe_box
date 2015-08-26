require('spec_helper')

describe(Recipe) do
  describe('#categories') do
    it('lists all the categories in it') do
      test_recipe = Recipe.create({:name => "yogurt and berries", :instructions => "mix yogurt and berries", :rating => 5})
      test_category = Category.create({:name => "breakfast"})
      test_recipe.categories.push(test_category)
      expect(test_recipe.categories()).to(eq([test_category]))
    end
  end
end
