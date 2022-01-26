class User < ApplicationRecord
    include BCrypt

    validates :login, presence: true, uniqueness: true
    validates :provider, presence: true

    has_many :articles, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_one :access_token, dependent: :destroy

  def password
    @password ||= Password.new(encrypted_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.encrypted_password = @password
  end
end
