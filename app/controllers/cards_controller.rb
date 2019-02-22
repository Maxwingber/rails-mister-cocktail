class CardsController < ApplicationController

  def index
    @cocktail = Cocktail.first
  end
end
