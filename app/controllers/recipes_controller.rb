class RecipesController < ApplicationController
    
    def index
        render json: Recipe.all
    end

    def create
        new_recipe = @current_user.recipes.create!(recipe_params)
        render json: new_recipe, status: :created
    end

    private 

    def recipe_params
        params.permit(:title, :minutes_to_complete, :instructions)
    end

end
