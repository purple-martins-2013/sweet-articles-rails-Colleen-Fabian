class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    redirect_to tag_articles_path(params[:id])
  end


end
