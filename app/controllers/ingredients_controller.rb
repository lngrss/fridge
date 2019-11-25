class IngredientsController < ApplicationController

   protect_from_forgery with: :null_session

  def index
    @ingredient = Ingredient.all
    render json: @ingredient, status: :ok
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    render json: @ingredient, status: :ok
  end

  def create
    @ingredient = Ingredient.create!(ingredient_params)
    render json: @ingredient, status: :created
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.delete
  end

  private

  def ingredient_params
    # whitelist params
    params.permit(:name, :grams, :colour, :expired)
  end

end
