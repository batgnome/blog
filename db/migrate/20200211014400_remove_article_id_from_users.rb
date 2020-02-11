class RemoveArticleIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :article_id
  end
end
