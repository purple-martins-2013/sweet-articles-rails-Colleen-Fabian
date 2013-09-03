class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @articles = Category.all
  end

  def show
    @category = params[:id]
    redirect_to category_articles_path(@category)
  end


end
