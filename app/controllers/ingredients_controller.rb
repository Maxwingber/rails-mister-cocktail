class IngredientsController < ApplicationController
  def new
    @ingredients = Ingredient.all
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to new_ingredient_path
    else
      render :new
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to new_ingredient_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
