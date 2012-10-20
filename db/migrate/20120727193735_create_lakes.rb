class CreateLakes < ActiveRecord::Migration
  def change
    create_table :lakes do |t|
      t.string  :content
      t.string  :name    
      t.integer :lake_id
      t.string  :lake_zipcode
      t.string  :slug
      t.string  :lake_name
      t.string  :city
      t.string  :state 
    
      t.timestamps
    end      
  end
end 
