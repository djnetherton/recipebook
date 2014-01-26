class RecipesController < ApplicationController
  def index
  	@allRecipes = Recipes.all
  end

  def new
  	@recipe = Recipes.new
  end

  def recipe_params
  	params.require(:recipes).permit(:title, :description, :difficulty, :ingredients, :method, :serves)
  end

  def create
  	@recipe = Recipes.new(recipe_params)

  	if @recipe.save
  		redirect_to recipes_path, :notice => "Your recipe was added"
  	else
  		render "new"
  	end
  end
end
