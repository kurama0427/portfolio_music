class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  before_save { self.email = email.downcase }
  mount_uploader :picture, IconUploader
  validates(:name, presence: true, length: {maximum:30})
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(:email, presence: true, length: {maximum:255}, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false })
  has_secure_password
  validates(:password, presence: true, length: { minimum: 6 }, allow_nil: true)
  validate  :picture_size
  
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  private

    # アップロードされた画像のサイズをバリデーションする
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

end
