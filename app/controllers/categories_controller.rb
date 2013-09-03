class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @articles = Category.all
  end

  def show
    redirect_to category_articles_path(params[:id])
  end


end
