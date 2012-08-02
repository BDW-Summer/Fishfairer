class CreateLakes < ActiveRecord::Migration
  def change
    create_table :lakes do |t|
      t.string :content
      t.string :name_of_lake
      t.integer :lake_id
      t.string  :lake_zipcode
      
 
     # add_column :lakes, :string
      
      t.timestamps
    end 
  end
end 
