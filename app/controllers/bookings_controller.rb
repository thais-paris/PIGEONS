class BookingsController < ApplicationController
def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking

    @booking.save
    redirect_to booking_path(@booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)

    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:address, :date, :message, :recipient_name, :option_droppings, :option_cooing)
  end

end
