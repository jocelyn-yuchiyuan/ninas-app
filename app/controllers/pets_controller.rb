class PetsController < ApplicationController
  def index
    Pets.all

  end

  def show
    @pet = Pet.find(params[:id])
    authorize @pet

  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
    authorize @pet
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :profile, :breed, :age)
  end
end
