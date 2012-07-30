class Lake < ActiveRecord::Base
  attr_accessible :name_of_lake, :lake_zipcode, :content, :user_id
  has_many :users
  
end
