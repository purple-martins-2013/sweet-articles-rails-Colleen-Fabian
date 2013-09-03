class RemoveTagStringColumn < ActiveRecord::Migration
  def change
    remove_column :articles, :tag_string
  end
end
