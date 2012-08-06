class User < ActiveRecord::Base
  
  attr_accessible :name, :email, :password, :password_confirmation, :attach, :pic, :zipcode
  has_secure_password
  has_many :microposts, dependent: :destroy

   
  before_save { |user| user.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  has_attached_file :pic,
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }
    # => validates_attachment_presence :attach
    has_attached_file :attach
   
  def feed
    microposts
  end
   
  def self.create_with_omniauth(auth) #Twitter Login
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
  def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
  end


   
end

