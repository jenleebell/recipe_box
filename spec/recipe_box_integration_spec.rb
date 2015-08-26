require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new recipe', {:type => :feature}) do
  it('allows a user to add a new recipe') do
    test_ingredient1 = Ingredient.create({:name => "", :amount => "1/2 TABLESPOON"})
    test_ingredient2 = Ingredient.create({:name => "", :amount => "1/2 TABLESPOON"})
    test_category = Category.create({:name => "breakfast"})
    visit('/')
    click_link('Add a new recipe')
    fill_in('name', :with => 'yogurt & berries')
    fill_in('description', :with => 'This is a healthy and delicious way to start your morning!')
    check('yogurt')
    check('berries')
    fill_in('instructions', :with => 'Mix yogurt and berries.')
    select('5')
    check('BREAKFAST')
    click_button('Add Recipe')
    expect(page).to have_content('')
  end
end
