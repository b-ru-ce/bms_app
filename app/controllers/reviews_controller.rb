class ReviewsController < ApplicationController
  def index
    @reviews = Review.page params[:page]
    @page = Page.purpose('/reviews').first
  end
end
