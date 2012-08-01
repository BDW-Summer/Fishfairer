class Lake < ActiveRecord::Base
  attr_accessible :name_of_lake, :lake_zipcode, :content, :user_id
 
	#def to_param
	 # name_of_lake
	#end
		
end
