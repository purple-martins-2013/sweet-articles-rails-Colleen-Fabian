class MatchCategoriesInArticlesTable < ActiveRecord::Migration
  def change
    Article.find_each do |article|
      article.update_attribute(:category_id, Category.find_by_name(article.category).id)
    end
  end
end
