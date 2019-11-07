class User < ApplicationRecord
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}

  # ユーザーに紐づいたPostインスタンスを戻り値として返す
  def posts
    return Post.where(user_id: self.id)
  end
end
