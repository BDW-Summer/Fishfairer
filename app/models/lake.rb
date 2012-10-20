class Lake < ActiveRecord::Base
  attr_accessible :name, :lake_zipcode, :content, :user_id
  has_many :microposts, :dependent=> :destroy
  extend FriendlyId
  friendly_id :name, :use=> :slugged
  def to_param
     "#{slug}".parameterize
  end
  
end
