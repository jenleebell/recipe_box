require('spec_helper')

describe(Recipe) do
  it('validates the presence of name') do
    test_recipe = Recipe.new({:name => ""})
    expect(test_recipe.save()).to(eq(false))
  end

  it('validates the presence of instructions') do
    test_recipe = Recipe.new({:name => "yogurt and berries", :instructions => ""})
    expect(test_recipe.save()).to(eq(false))
  end

  it('ensures the length of name is at most 50 characters') do
    test_recipe = Recipe.new({:name => "a".*(51)})
    expect(test_recipe.save()).to(eq(false))
  end

  it('ensures the rating is nil or between 1-5') do
    test_recipe = Recipe.new({:name => "yogurt and berries", :instructions => "mix yogurt and berries", :rating => 6})
    expect(test_recipe.save()).to(eq(false))
  end

  describe('#categories') do
    it('lists all the categories in it') do
      test_recipe = Recipe.create({:name => "yogurt and berries", :instructions => "mix yogurt and berries", :rating => 5})
      test_category = Category.create({:name => "breakfast"})
      test_recipe.categories.push(test_category)
      expect(test_recipe.categories()).to(eq([test_category]))
    end
  end
end
