class CreateArticlesTagsJoinTable < ActiveRecord::Migration

  def change
    rename_column :articles, :tags, :tag_string

    create_table :articles_tags, id: false do |t|
      t.integer :article_id, :null => false
      t.integer :tag_id, :null => false
    end

    Article.find_each do |article|
      split_tags = article.tag_string.split(', ')
      split_tags.each do |tag|
        current_tag = Tag.find_by_name(tag)
        current_tag.articles << article
      end
    end

  end
end
