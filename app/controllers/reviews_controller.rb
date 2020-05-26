class ReviewsController < ApplicationController
  def create
    @rental = Rental.find(params[:rental_id])
    @review = Review.new(review_params)
    @review.rental = @rental
  #  if @review.save!
  #    redirect_to ??root_path
  #  else
  #    render ??
  #  end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
