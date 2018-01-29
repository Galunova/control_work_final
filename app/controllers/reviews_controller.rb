class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to reviews_path
    else
      render 'new'
    end
  end

  def destroy
    Review.destroy(params[:id])

    redirect_to reviews_path
  end

  def review_params
    params.require(:review).permit(:review_comment, :feed_rate, :service_rate, :atmosphere_rate, :user_id, :establishment_id)
  end

end

