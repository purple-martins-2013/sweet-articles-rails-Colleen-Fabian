class ArticlesController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @article.category = Category.find(params[:category_id])
  end

end
