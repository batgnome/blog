class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user

  def author? user
    user == self.user || user == article.user
  end
end
