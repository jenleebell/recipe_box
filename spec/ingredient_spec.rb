require('spec_helper')

describe(Ingredient) do
  it('validates the presence of name') do
    test_ingredient = Ingredient.new({:name => ""})
    expect(test_ingredient.save()).to(eq(false))
  end

  it('converts the name to lowercase') do
    test_ingredient = Ingredient.create({:name => "YOGURT"})
    expect(test_ingredient.name()).to(eq("yogurt"))
  end

  describe('#recipes') do
    it('lists all the recipes in it') do
      test_recipe = Recipe.create({:name => "yogurt and berries", :instructions => "mix yogurt and berries", :rating => 5})
      test_ingredient = Ingredient.create({:name => "yogurt"})
      test_ingredient.recipes.push(test_recipe)
      expect(test_ingredient.recipes()).to(eq([test_recipe]))
    end
  end

  describe('#amounts') do
    it('lists the amounts for the ingredient') do
      test_ingredient = Ingredient.create({:name => "yogurt"})
      test_amount = Amount.create({:quantity => "1/2 tablespoons"})
      test_ingredient.amounts.push(test_amount)
      expect(test_ingredient.amounts()).to(eq([test_amount]))
    end
  end
end
