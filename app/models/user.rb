class User < ApplicationRecord
  has_secure_password

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}

  # ユーザーに紐づいたPostインスタンスを戻り値として返す
  def posts
    return Post.where(user_id: self.id)
  end
end
