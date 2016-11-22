class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :update, :destroy]

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :unit)
  end

  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  def show

    render json: Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
      if @ingredient.save
        render json: @ingredient, status: :created
      else
        render json: @ingredient.errors, status: :unprocessable_entity
      end
  end

  def update
    if @ingredient.update(ingredient_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ingredient.destroy
      head :no_content
  end


end


# --client server controller model views(what client sees end of the cycle)

# .find_by returns first instance of whatevz --- .where returns all instances
