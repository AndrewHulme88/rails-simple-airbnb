class FlatsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
    # if @flat.update(flat_params)
    #   redirect_to @flat, notice: "Flat was successfilly updated."
    # else
    #   render :edit
    # end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flat_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def record_not_found
    flash[:alert] = "Flat not found"
    redirect_to flats_path
  end
end
