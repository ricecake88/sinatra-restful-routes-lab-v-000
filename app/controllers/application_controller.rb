require "./config/environment"
require "./app/models/recipe"
require 'pry'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/recipes' do
    @recipes = Recipe.all
    erb :'recipes/index'
  end
  
  get '/recipes/new' do
    erb :'recipes/new'
  end
  
  post '/recipes' do
<<<<<<< HEAD
    @recipe = Recipe.create do |r|
      params.each do |key, value|
        r.send("#{key}=", value)
      end
     r.save
    end
=======
    @recipe = Recipe.create(name: params[:recipe_name], ingredients: params[:recipe_ingredients], cook_time: (params[:recipe_cook_time]).to_i)
    @recipe.save
    binding.pry
    
>>>>>>> 0e5e2aabacebd78280418110d3147743ab1cc98d
    redirect to "/recipes/#{@recipe.id}"
  end
  
  get '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :'recipes/show'
  end
  
  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :'recipes/edit'
  end

  patch '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
<<<<<<< HEAD
    @recipe.update do |r|
      params.each do |key, value|
        r.send("#{key}=", value)
      end
      r.save
    end
    redirect to "recipes/#{@recipe.id}"
  end
  
  delete '/recipes/:id/delete' do
    @recipe = Recipe.find_by_id(params[:id])
=======
    @recipe.update(name: params[:recipe_name], ingredients: params[:recipe_ingredients], cook_time: params[:recipe_cook_time])
    @recipe.save
    erb :'recipes/show'
  end
  
    
  get '/recipes/:id/delete' do
    @recipe = Recipe.find(params[:id])
>>>>>>> 0e5e2aabacebd78280418110d3147743ab1cc98d
    @recipe.delete
  end
end