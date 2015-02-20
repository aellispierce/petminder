class PetsController < ApplicationController
  before_action :set_pet, only: [:edit, :update, :destroy]
  before_action :authenticate_user

  def index
    @pets= Pet.all
  end

  def new
    @pet=Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path, notice: 'Pet was successfully created.'
    else
      render :new, notice: 'Please try again.'
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pets_path, notice: 'Pet was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @pet.destroy
    redirect_to pet_url, notice: 'Pet was successfully destroyed.'
  end
  def edit
  end

  private
  def set_pet
    @pet =Pet.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pet_params
    params.require(:pet).permit(:name, :breed, :user_id)
  end

end
