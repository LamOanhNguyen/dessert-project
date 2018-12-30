class User < ApplicationRecord
  attr_accessor :remember_token

  has_many :comments, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :suggested_products, dependent: :destroy
  has_many :ratings, dependent: :destroy

  mount_uploader :profile_image, UserUploader

  validates :user_name, presence: true,
    length: {minimum: Settings.validation.user_name_min,
    maximum: Settings.validation.user_name_max}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    length: {maximum: Settings.validation.email},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}


  VALID_PHONE_NUMBER_REGEX = /\A0[0-9]{9,10}\z/
  validates :phone_number, presence: true, format: { with: VALID_PHONE_NUMBER_REGEX }
  validates :address, presence: true

  
  has_secure_password
  validates :password, presence: true,
    length: {minimum: Settings.validation.password}, allow: nil
  validates :profile_image, presence: true
  before_save {email.downcase!}

  scope :order_by_name, -> {order "user_name"}

  scope :by_name_email, -> keyword do
    where "user_name LIKE '%#{keyword}%' OR email LIKE '%#{keyword}%'" if keyword.present?
  end

  def self.digest string
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
      BCrypt::Engine.cost
    BCrypt::Password.create string, cost: cost
  end

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute :remember_digest, User.digest(remember_token)
  end

  def forget
    update_attribute :remember_digest, nil
  end

  def authenticated? attribute, token
    digest = send "#{attribute}_digest"
    if digest.nil?
      false
    else
      BCrypt::Password.new(digest).is_password? token
    end
  end

  def is_user? user
    self == user
  end

  private
  
    def downcase_email
      self.email = email.downcase
    end
end
