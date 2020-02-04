class AddLikeCountToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :like_count, :integer, default: 0, null: false
  end
end
