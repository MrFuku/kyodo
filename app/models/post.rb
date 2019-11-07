class Post < ApplicationRecord
  validates :content, { presence: true, length: { maximum: 140 } }
  validates :user_id, { presence: true }

  # その投稿に紐づいたユーザーを返すインスタンスメソッド
  def user
    return User.find_by(id: self.user_id)
  end
end
