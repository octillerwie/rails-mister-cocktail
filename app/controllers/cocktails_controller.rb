class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
  # A user can see the details of a given cocktail, with the dose needed for each ingredient

  def show
    @cocktail = Cocktail.find(params[:id])
  end
  # A user can create a new cocktail

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail, notics: "Cocktail was successfully added"
    else
      render :new
    end
  end
end

private

def cocktail_params
  params.require(:cocktail).permit(:name, :photo)
end

# heroku config:set CLOUDINARY_URL=cloudinary://536429668474783:GCgrxtjSCMgz6VON0eeG_EpxdfI@dqqpqlyes
