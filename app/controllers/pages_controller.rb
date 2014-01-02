class PagesController < ApplicationController
  def home
    @menu_tree = Page.menu_tree
  end

  def show

    @page = Page.find(params[:id])

  end
end
