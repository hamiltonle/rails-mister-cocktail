class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      # raise
      redirect_to @cocktail
    else
      render :new
    end

  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end


end

