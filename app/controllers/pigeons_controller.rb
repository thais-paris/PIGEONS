class PigeonsController < ApplicationController
def index
     @pigeons = Pigeon.all
   end

   def show
     @pigeon = Pigeon.find(params[:id])
   end

   def create
     @pigeon = Pigeon.new(pigeon_params)
     @pigeon.save
     redirect_to pigeon_path(@pigeon)
   end

   def new
     @pigeon = Pigeon.new
   end

  def edit
    @pigeon = Pigeon.find(params[:id])
  end

  def update
    @pigeon = Pigeon.find(params[:id])
    @pigeon.update(pigeon_params)

    redirect_to pigeon_path(@pigeon)
  end

   private

   def pigeon_params
     params.require(:pigeon).permit(:name, :address, :description, :price_day, :breed)
   end

 end
