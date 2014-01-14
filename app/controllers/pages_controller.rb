class PagesController < ApplicationController
  def home
    @page = Page.purpose('/').first
  end

  def show
    @page = Page.find(params[:id])
  end

  def reviews
    @reviews = Review.page params[:page]
    @page = Page.purpose('/reviews').first
  end
end
