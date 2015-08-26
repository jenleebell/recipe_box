require('spec_helper')

describe(Category) do
  it('validates the presence of name') do
    test_category = Category.new({:name => ""})
    expect(test_category.save()).to(eq(false))
  end

  it('converts the name to uppercase') do
    test_category = Category.create({:name => "BreAKfAST"})
    expect(test_category.name()).to(eq("BREAKFAST"))
  end

  describe('#recipes') do
    it('lists all the recipes in it') do
      test_recipe = Recipe.create({:name => "yogurt and berries", :instructions => "mix yogurt and berries", :rating => 5})
      test_category = Category.create({:name => "breakfast"})
      test_category.recipes.push(test_recipe)
      expect(test_category.recipes()).to(eq([test_recipe]))
    end
  end
end
