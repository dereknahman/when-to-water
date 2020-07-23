class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def new
    @plant = Plant.new 
  end

  def create
    @plant = Plant.new(params.require(:plant).permit(:title, :date_acquired, :lighting_preference, :watering_frequency, :last_watered))

    respond_to do |format|
      if @plant.save
        format.html { redirect_to plants_path, notice: 'Your plant has been created 🌱' }          
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])

    respond_to do |format|
      if @plant.update(params.require(:plant).permit(:title, :date_acquired, :lighting_preference, :watering_frequency, :last_watered))
        format.html { redirect_to plants_path, notice: 'Your plant has been updated 🌳' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def destroy
    @plant = Plant.find(params[:id])

    @plant.destroy
      respond_to do |format|
        format.html { redirect_to plants_path, notice: 'Your plant was successfully destroyed 💣' }
    end
  end
end
