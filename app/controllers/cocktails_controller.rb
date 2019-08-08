class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
     if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: 'Cocktail was successfully created.'
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
  end

  def update
  end

  def delete
  end
end

private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
