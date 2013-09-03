class CreateAndSeedTagsTable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
    end

    Article.find_each do |article|
      split_tags = article.tags.split(', ')
      split_tags.each do |tag|
        Tag.find_or_create_by(
          :name => tag
          )
      end
    end
  end
end
