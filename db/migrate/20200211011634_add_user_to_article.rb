class AddUserToArticle < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :user, foreign_key: true
  end
end

# rails g migration AddUserToComment user:references
