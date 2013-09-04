class ArticlesController < ApplicationController

  def index
    unless (params[:category_id].nil?)
      @category = Category.find_by_name(params[:category_id])
    else
      @tag = Tag.find_by_name(params[:tag_id])
    end
  end

  def show
    @article = Article.find_by_title(params[:id].gsub('-',' '))
  end

  def new
    @article = Article.new
    @article.category = Category.find(params[:category_id])
  end

end
