class DosesController < ApplicationController

  # def index
  #   @doses = Dose.all
  # end

  def new
    # we need @cocktail in our `simple_form_for`
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    # we need `cocktail_id` to asssociate review with corresponding restaurant
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    # @dose.save

    # redirect_to cocktail_path(@dose.cocktail)

    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(@dose.cocktail_id)
    @dose.delete
  end


  # def destroy
  #   @dose = Dose.find(params[:id])
  #   @cocktail = @dose.cocktail_id
  #   @dose =

  private

  def dose_params
   #do we need to permit ingredient_id and cocktail_id?
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end


