class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }

  def add_like
    self.likes.create(timestamp: Time.now)
  end

  def like_count
    self.likes.count
  end
end
