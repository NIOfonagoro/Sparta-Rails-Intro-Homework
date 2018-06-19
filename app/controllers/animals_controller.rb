class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end
  def new

  end
  def show
    @animal = Animal.find(params[:id])
  end
  def create
    # render plain: params[:post].inspect
    @animal = Animal.new(animal_params)

    @animal.save
    redirect_to @animal
  end
  private def animal_params
    params.require(:animal).permit(:title, :body)
  end
end
