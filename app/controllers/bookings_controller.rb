class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def pending
    @bookings = policy_scope(Booking.joins(:pigeon).where('pigeons.user_id = ?', current_user.id))
    authorize @bookings
    # @bookings = policy_scope(current_user.booked_pigeons)
    sql_query = "status ILIKE 'pending' AND pigeons.user_id = ?"
    @bookings = Booking.joins(:pigeon).where(sql_query, current_user.id)
    @bookings_all = Booking.joins(:pigeon).where('pigeons.user_id = ?', current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
    @pigeon = params[:pigeon]
    @address = params[:address]
    @date = params[:date]
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.pigeon = Pigeon.find(params[:pigeon])
    @booking.user = current_user
    @booking.date = params[:date]
    @booking.address = params[:address]
    @booking.status = 'pending'
    @booking.save
    redirect_to booking_path(@booking)
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
    @booking.destroy
    redirect_to pending_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:message, :recipient_name, :option_droppings, :option_cooing)
  end
end
