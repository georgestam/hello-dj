class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(
  end

  def create
    @booking.find(params[:booking_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

end


def cocktail_params
  params.require(:review).permit(:description, :rating)
end
