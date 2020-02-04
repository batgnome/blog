class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :article, null: false, foreign_key: true
      t.time :timestamp, null: false
    end
  end
end
