require('spec_helper')

describe(Ingredient) do
  it('validates the presence of name') do
    test_ingredient = Ingredient.new({:name => "", :amount => "1/2 TABLESPOON"})
    expect(test_ingredient.save()).to(eq(false))
  end

  it('converts the name to lowercase') do
    test_ingredient = Ingredient.create({:name => "YOGURT", :amount => "1/2 TABLESPOON"})
    expect(test_ingredient.name()).to(eq("yogurt"))
  end

  it('converts the amount to lowercase') do
    test_ingredient = Ingredient.create({:name => "YOGURT", :amount => "1/2 TABLESPOON"})
    expect(test_ingredient.amount()).to(eq("1/2 tablespoon"))
  end

  describe('#recipes') do
    it('lists all the recipes in it') do
      test_recipe = Recipe.create({:name => "yogurt and berries", :instructions => "mix yogurt and berries", :rating => 5})
      test_ingredient = Ingredient.create({:name => "yogurt", :amount => "1/2 TABLESPOON"})
      test_ingredient.recipes.push(test_recipe)
      expect(test_ingredient.recipes()).to(eq([test_recipe]))
    end
  end
end
