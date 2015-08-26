require("bundler/setup")
require('pry')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/recipe/new') do
  erb(:recipe_form)
end

post('/recipes') do
  @recipe = Recipe.create({:name => params.fetch("recipe_name"), :description => params.fetch("description"), :instructions => params.fetch("instructions")})
  redirect("/recipe/#{@recipe.id()}")
end

get('/recipe/:id') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  erb(:recipe)
end

patch('') do
  # this is where we do updates from 3 forms on recipe detail page
end
