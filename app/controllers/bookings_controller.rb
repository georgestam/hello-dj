class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @booking.profile = Profile.find(params[:profile_id])
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.profile = Profile.find(params[:profile_id])
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @booking.destroy
  end

private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :booking_address, :time)
  end
end
