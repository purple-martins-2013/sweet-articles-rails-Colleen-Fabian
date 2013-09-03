class MoveColumnDataToCategoriesTable < ActiveRecord::Migration
  def change
    Article.find_each do |article|
      Category.find_or_create_by(
        :name => article.category
        )
    end
  end
end
