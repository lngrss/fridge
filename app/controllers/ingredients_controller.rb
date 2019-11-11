class IngredientsController < ApplicationController

  def index
    @ingredient = Ingredient.all
    render json: @ingredient, status: :created
  end

  def create (params)
    @ingredient = Ingredient.create!(params)
    render json: @ingredient, status: :created
  end

  private

  def ingredient_params
    # whitelist params
    params.permit(:name, :colour)
  end

end
