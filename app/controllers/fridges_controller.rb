class FridgesController < ApplicationController

   protect_from_forgery with: :null_session

  def index
    @fridge = Fridge.all
    render json: @fridge, status: :ok
  end

  def show
    @fridge = Fridge.find(params[:id])
    render json: @fridge, status: :ok
  end

  def create
    @fridge = Fridge.create!(fridge_params)
    render json: @fridge, status: :created
  end

  def update
    @fridge = Fridge.find(params[:id])
    @fridge.update(fridge_params)
  end

  def destroy
    @fridge = Fridge.find(params[:id])
    @fridge.delete
  end

  private

  def fridge_params
    # whitelist params
    params.permit(:name, :grams, :colour)
  end

end
