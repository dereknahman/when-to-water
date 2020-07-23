class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  def index
    @plants = Plant.all
  end

  def new
    @plant = Plant.new 
  end

  def create
    @plant = Plant.new(plant_params)

    respond_to do |format|
      if @plant.save
        format.html { redirect_to plants_path, notice: 'Your plant has been created 🌱' }          
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    set_plant

    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to plants_path, notice: 'Your plant has been updated 🌳' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    set_plant

    @plant.destroy
      respond_to do |format|
        format.html { redirect_to plants_path, notice: 'Your plant was successfully destroyed 💣' }
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:title, :date_acquired, :lighting_preference, :last_watered)
  end

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
