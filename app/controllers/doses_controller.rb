class DosesController < ApplicationController
  def new
    # we need @cocktail in our `simple_form_for`
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    # we need `cocktail_id` to asssociate review with corresponding restaurant
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save

    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
   #do we need to permit ingredient_id and cocktail_id?
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end


