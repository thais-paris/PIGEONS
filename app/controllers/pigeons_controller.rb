class PigeonsController < ApplicationController
  def index
    @pigeons = policy_scope(Pigeon)
  end

  def show
    @pigeon = Pigeon.find(params[:id])
    authorize @pigeon
  end

  def new
    @pigeon = Pigeon.new
    authorize @pigeon
  end

  def create
    @pigeon = Pigeon.new(pigeon_params)
    authorize @pigeon
    @pigeon.user = current_user
    @pigeon.save
    redirect_to pigeon_path(@pigeon)
  end

  def edit
    @pigeon = Pigeon.find(params[:id])
    authorize @pigeon
  end

  def update
    @pigeon = Pigeon.find(params[:id])
    authorize @pigeon
    @pigeon.update(pigeon_params)
    redirect_to pigeon_path(@pigeon)
  end

  def destroy
    @pigeon = Pigeon.find(params[:id])
    authorize @pigeon
    @pigeon.destroy
  end

  private

  def pigeon_params
    params.require(:pigeon).permit(:name, :address, :description, :price_day, :breed, :photo)
  end

end
