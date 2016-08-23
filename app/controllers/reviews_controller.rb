class ReviewsController < ApplicationController

  before_action :set_booking

  def new
    @review = @booking.reviews.build
  end

  def create
    review = Review.new(review_params)
    @review.booking = @booking
    @review.save
    redirect_to booking_path(@booking)
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:description, :rating)
  end

end
