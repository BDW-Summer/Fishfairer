class User < ActiveRecord::Base
attr_accessible :name, :email, :password, :password_confirmation, :attach, :zipcode, :lakes  
	has_secure_password
   has_many :lakes, dependent: :destroy
   belongs_to :lake
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
  validates_attachment_presence :attach
  has_attached_file :attach
   
end
